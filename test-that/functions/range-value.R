range_value <- function(x, na.rm=TRUE){
	if(na.rm==TRUE){
		x <- x[!is.na(x)]}
	max(x) - min(x)
}
