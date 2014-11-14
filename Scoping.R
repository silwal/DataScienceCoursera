##Scoping.

## Lexical Scoping

make.power<-function(n){
  pow<-function(x){
    x^n
  }
  pow
}

## Execution:
## > h<-make.power(3)
## > h(2)
## [1] 8

## Exploring a function closure:
## ls(environment(h))
## [1] "n"   "pow"
## get("n", environment(h))



## Lexical Vs. Dynamic Scoping

y<-10
f<-function(x){
  y<-2 ## Dynamic Scoping value is looked at the environment where the function is called. So value of y will be 2.
  y^2 + g(x)
}

g<-function(x){
  x*y ## Lexical Scoping value of y is looked at the global environment i.e. 10
}

## Now when you execute f(3) what will be output ? 