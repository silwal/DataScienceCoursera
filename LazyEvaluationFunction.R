## Example of Lazy Evaluation.
## However it can be argued, that the function is defined incorrectly. 
f<-function(a,b){
  a^2
}


## This will work until print(a) line then will show error.
## IFF we pass only one argument when calling the function.
f1<-function(a,b){
  print(a)
  print(b)
}