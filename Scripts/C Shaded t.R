

# Create data for the area to shade
TX<-seq(-5,2,.01)
cord.x <- c(-5,TX,2) 
cord.y <- c(0,dt(TX,8),0) 

# Make a curve
curve(dt(x,8), xlim=c(-5,5), main="Student's t", xlab = "") 

# Add the shaded area.
polygon(cord.x,cord.y,col='skyblue')

?dt
