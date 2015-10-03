library(yaml)

rename_by_yaml = function(data,file) {
  name_map = new.env()
  yam <- yaml.load_file(file)
  lapply(names(yam$dictionary),function(n) { 
      src <- yam$dictionary[[n]]$source; 
      if(! is.null(src)) name_map[[src]] <- n  
  })
  lapply(names(data),function(col) { 
    ifelse(is.null(name_map[[col]]),col,name_map[[col]]) 
  })
}