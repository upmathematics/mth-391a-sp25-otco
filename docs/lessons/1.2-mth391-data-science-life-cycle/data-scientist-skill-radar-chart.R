# Library
library(fmsb)
library(ggplot2)

## The Wizard

# Create data:
data <- as.data.frame(t(c(0.95,0.85,0.60,0.70,0.75,0.90,0.90,0.80,0.95,0.60)^1.5))

colnames(data) <- c("Mathematics" , 
                    "Statistics" , 
                    "Computer Science" ,
                    "Programming",
                    "Communication" , 
                    "Teamwork", 
                    "Learning" ,
                    "Visualization", 
                    "Data Wrangling",
                    "Domain Knowledge")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data <- rbind(rep(1,10) , rep(0,10) , data)

# Custom the radarChart
par(bg=NA,mar = c(4,0,4,0))
radarchart( data,
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=5 , 
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,1,5), cglwd=0.8,
            vlcex=1.25
)

dev.copy(png,file="the-wizard.png", units="in", width=6.5, height=6.5, res=300)
dev.off()

## The Artist

# Create data: note in High school for Jonathan:
data <- as.data.frame(t(c(0.75,0.70,0.60,0.70,0.75,0.90,0.90,0.95,0.80,0.70)^1.5))

colnames(data) <- c("Mathematics" , 
                    "Statistics" , 
                    "Computer Science" ,
                    "Programming",
                    "Communication" , 
                    "Teamwork", 
                    "Learning" ,
                    "Visualization", 
                    "Data Wrangling",
                    "Domain Knowledge")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data <- rbind(rep(1,10) , rep(0,10) , data)

# Custom the radarChart
par(bg=NA,mar = c(4,0,4,0))
radarchart( data,
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=5 , 
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,1,5), cglwd=0.8,
            vlcex=1.25
)

dev.copy(png,file="the-artist.png", units="in", width=6.5, height=6.5, res=300)
dev.off()

## The Story Teller

# Create data: note in High school for Jonathan:
data <- as.data.frame(t(c(0.75,0.70,0.60,0.65,0.95,0.90,0.80,0.90,0.70,0.80)^1.5))

colnames(data) <- c("Mathematics" , 
                    "Statistics" , 
                    "Computer Science" ,
                    "Programming",
                    "Communication" , 
                    "Teamwork", 
                    "Learning" ,
                    "Visualization", 
                    "Data Wrangling",
                    "Domain Knowledge")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
data <- rbind(rep(1,10) , rep(0,10) , data)

# Custom the radarChart
par(bg=NA,mar = c(4,0,4,0))
radarchart( data,
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=5 , 
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,1,5), cglwd=0.8,
            vlcex=1.25
)

dev.copy(png,file="the-story-teller.png", units="in", width=6.5, height=6.5, res=300)
dev.off()
