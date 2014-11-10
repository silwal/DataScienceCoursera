Notes
==========

### Data Types

* Data Types: There are five kinds of data types.
* Data Types: character, numeric(real numbers), integer, complex, logical. 
* Most important: Double precision real numbers, i.e. numeric objects are most important ones.
* Explicit Integer: To initialize __integer__ explicitly append __L__ to it. By default always __numeric__ type is created. 

### Inf

* __Inf__ represents __infinity__.
* __Inf__ is treated like a real number.
* __Inf__ can be used as infinite and does gives expected results.
* __Inf__ we can have both positive and negative. 
* 1/0 will return a __Inf__

### NaN

* __NaN__ is __not a number__
* __NaN__ is basically used to represent undefined value.
* __NaN__ can be also taken as missing value.
* 0/0 will return a __NaN__ 

### Vectors

* Vectors: Most basic object in R. 
* Data Types: Vectors can have only one object type in it, but a __list__ vector can have multiple object types.

### Vector Creation

#### Using a __vector()__ function

* Creation: Vectors can be created using `vector()` function.
* Arguments: Two arguments. First it mode/type and second is length. Example: `vector(mode="character",length=10)`
* Documentation: More details on `vector()` function can be found here: [Documentation](https://stat.ethz.ch/R-manual/R-devel/library/base/html/vector.html)

#### Using a __c()__ function

* This gives us was to concatenate.
* Examples: 
`x<-c(5,6)` 
`x<-c("apple","banana")` 
`x<-c(True,False)`
* If we mixing object types e.g. boolean and numeric value, R will create a numeric vector. 


### Objects

* Objects: Everything in R are objects.


### Object Attributes types

* names, dimnames
* dimensions ( e.g. matrices, arrays )
* class
* length
* Other user defined attributes / metadata.
* Use `attributes()` function to set/modify attributes of an object.

### Assignment operator

* this looks like __<-__
* Example ` x <- 12` this will assign create an object or a numeric vector __x__ and assign a value 12 to it.


### Sequence

* Colon operator __:__ can be used to create integer sequence. 
* A __Sequence__ can be created like this `x<-1:5'
* Now printing x will give `[1] 1 2 3 4 5`

### Explicit Coercion

* This is the way to explicitly convert classes. E.g. numeric to characters etc.
* Conversion can be achieved using __as.*__ function.
* Example `as.numeric(x)` here object x is being converted into numeric. `as.logical(x)` etc.
* Non-sensible coercion will result with __NA__ value.


### Matrices

* This are vectors with attribute called dimension.
* Dimension attribute is itself a integer vector of length two. First number represents number of rows and second number represents number of columns.

#### Matrix Creation

__Using matrix() Function__ 
					
* Matrices can be created using `Matrix()` function. [Documentation](https://stat.ethz.ch/R-manual/R-devel/library/base/html/matrix.html)
* Example: `mat<-matrix(nrow = 2, ncol = 4)`
* Example: `mat<-matrix(1:6,nrow=2,ncol=3)` This will fill up values 1 to 6 in the matrix __column wise__.

__Adding Dimension to a Sequence__ 
					
* Another way to create a matrix is to __create a sequence vector__ then __assigning a dimension__ to it. 
* Example: `mat<-1:10` then `dim(mat) <- c(2,5)`

__Using column or row binding__ 
					
* Here two vectors can be used to bind them into a matrix either column wise or row wise.
* Example of column wise binding:
`x<-4:6`
`y<-11:13`
`cbind(x,y)`
* Example of row wise binding.
`x<-4:6`
`y<-11:13`
`rbind(x,y)`

#### Matrix Functions

* We can call `attributes()` function passing the matrix to get the attributes of the matrix.[Documentation](http://cran.r-project.org/doc/manuals/r-release/R-lang.html#Attributes)
* We can use `dim()` function passing the matrix to get the dimension of the matrix.[Documentation](https://stat.ethz.ch/R-manual/R-devel/library/base/html/dim.html) 	


### Lists

* Very important type of vector. And are very common.
* List is a special type of vector which can hold values of multiple classes/types.
* Example: `l<-list(123,"list",TRUE,1+4i)`
* Elements of a list will have double square brackets around index, while other vectors has only one square bracket.




