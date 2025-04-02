## Title: Ridgeline Chart for Daily Temperature and Precipitation in Spanish Cities
## Data source: https://open-meteo.com/

# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)
library(ggridges)

# Create a list of dataframes for each city
data <- list(
    list(
        label="A Coruña",
        df=read_csv("data/daily_A_Coruna.csv")
        ),
    list(
        label="Barcelona",
        df=read_csv("data/daily_Barcelona.csv")
        ),
    list(
        label="Bilbao",
        df=read_csv("data/daily_Bilbao.csv")
        ),
    list(
        label="Las Palmas de GC",
        df=read_csv("data/daily_Las_Palmas_GC.csv")
        ),
    list(
        label="Madrid",
        df=read_csv("data/daily_Madrid.csv")
        ),
    list(
        label="Palma de Mallorca",
        df=read_csv("data/daily_Palma.csv")
        ),
    list(
        label="Sevilla",
        df=read_csv("data/daily_Sevilla.csv")
        ),
    list(
        label="Valencia",
        df=read_csv("data/daily_Valencia.csv")
        ),
    list(
        label="Zaragoza",
        df=read_csv("data/daily_Zaragoza.csv")
        )
)

# Modify each df by adding a column with the city name and rename the columns
for (i in 1:length(data)) {
    data[[i]]$df <- data[[i]]$df %>% 
        mutate(city = data[[i]]$label) %>% 
        rename(date = time, 
               tmean = `temperature_2m_mean (°C)`, 
               prec = `precipitation_sum (mm)`
               )
    # Replace 0 values in precipitation with NA
    data[[i]]$df$prec[data[[i]]$df$prec == 0] <- NA
}

# Combine all dataframes into one
combined_data <- do.call(rbind, lapply(data, function(x) x$df))

# Plot de temperatura
ggplot(combined_data, aes(x = tmean, y = city, fill = after_stat(quantile))) +
    geom_density_ridges_gradient(
        scale = 2.3, 
        alpha = 0.6, 
        quantiles = c(0.05, 0.5, 0.95),
        calc_ecdf = TRUE
    ) +
    scale_fill_manual(
        name = "Percentiles",
        values = c("#FFB3B3", "#FF6666", "#CC0000", "#800000"),
        labels = c("< P5%", "P5% - P50%", "P50% - P95%", "> P95%")
    ) +
    xlab("Temperatura Media Diaria (°C)") +
    ylab("") +
    theme_minimal() +
    scale_y_discrete(expand = c(0.2, 0.2)) +
    theme(
        axis.text.y = element_text(face = "bold", size = 14),
        axis.title.x = element_text(size = 12),
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14))
# Save the plot as a PNG file
ggsave("plots/temperature_plot.png", dpi = 300)

# Plot the precipiation data
ggplot(combined_data, aes(x = prec, y = city, fill = after_stat(quantile))) +
    stat_density_ridges(
        geom = "density_ridges_gradient",
        scale = 2.3, 
        alpha = 0.6, 
        quantiles = c(0.05, 0.5, 0.95),
        calc_ecdf = TRUE,
        from = 0  # Evita que la densidad se extienda a valores negativos
    ) +
    scale_fill_manual(
        name = "Percentiles",
        values = c("#B3D9FF", "#66A3FF", "#0066CC", "#003366"),
        labels = c("< P5%", "P5% - P50%", "P50% - P95%", "> P95%")
    ) +
    xlab("Precipitación Acumulada Diaria (mm)") +
    ylab("") +
    theme_minimal() +
    scale_x_continuous(limits = c(0, NA)) +  # Asegura que X no sea negativa
    scale_y_discrete(expand = c(0.2, 0.2)) +
    theme(
        axis.text.y = element_text(face = "bold", size = 14),
        axis.title.x = element_text(size = 12),
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 14))
# Save the plot as a PNG file
ggsave("plots/precipitation_plot.png", dpi = 300)