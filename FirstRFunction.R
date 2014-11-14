## To add two passed number.
add2<-function(x,y){
  x+y
}

## To return numbers greater than 10 in the vector.
above10V1<-function(arg){
  return(arg[arg>10])
}

## To return numbers greater than 10 in the vector.
above10V2<-function(arg){
  use<- arg > 10
  arg[use]
}

## To return numbers greater than another passed number in the passed vector.
## Notice abov argument has a default value.
aboveAny<-function(arg,abov=10){
  use<-arg>abov
  arg[use]
}