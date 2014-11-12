Notes
==========

## Data Types

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
* Used for undefined mathematical operations.
* __NaN__ can be also taken as missing value.
* 0/0 will return a __NaN__ 

###Na

* __Na__ is simply not available.

### Functions to use with NaN and Na

* There are two functions that are used mostly with Na and NaN.
* Function `is.na()` is used to test objects if they are Na.
* Function `is.nan()` is used to test objects if they are NaN.
* Na values can have class too. E.g. missing integer value, or missing character value.
* __NaN__ is also considered to be an __Na__, but reverse is not true.
* Example: `q <- c(1,5,3,NaN,8,NaN)` and `p <- c(1,2,3,NA,NaN,9)` one can use both `is.na()` and `is.nan()` in these vectors.
* Easy way to find out count of NA `sum(is.na(data_frame$col_name))`
* Find mean of the data column ignoring NAs:
	* `n<-is.na(data$Ozone)` 
	* `mean(data$Col[!n])`
	
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

### Factors

* Factor are vectors which represents categorical data.
* Can be ordered or unordered. E.g. Male & Female (unordered) or Rank (ordered), so values will represent the category. E.g. male can be one and female can be zero.  
* To make it easier to think, factor is a integer vector where each integer has a label. 
* Factors are important for modelling functions. e.g. `lm()` and `glm()`
* Example: `fac <- factor(c("yes","yes","no","NA","no","no","yes","yes","NA","NA","yes","yes"))` as you can tell, there are data which can be one of three values __yes__ or __no__ or __NA__. Now printing the vector will give us:
`[1] yes yes no  NA  no  no  yes yes NA  NA  yes yes`
`Levels: NA no yes`
* `unclass()` function will bring the vector down to integer vector. Example: 
`> unclass(fac)`
`[1] 3 3 2 1 2 2 3 3 1 1 3 3`
`attr(,"levels")`
`[1] "NA"  "no"  "yes"`
* As one can see above the __levels__ are ordered by R alphabetically, but one can specify how to order the level as well. 
* Example: `> fac3 <- factor(c("yes","yes","no","NA","no","no","yes","yes","NA","NA","yes","yes"),levels=c("yes","NA","no"))`
* It is important on data analysis to know the base level.


### Data Frames

* Data Frames are used to store tabular data.
* These are very important in R.
* Attributes of Data Frames:
	** `row.names`
* Functions that we used on Data Frames:
	** `read.table()`
	** `read.csv()`
	** `data.matrix()` - This converts data frame to a matrix, but be-careful on conversion that happens.
* Example:
	`> d <- data.frame(foo=1:4, bar = c(T,T,F,F))`
	`> d`
	`foo   bar`
	`1   1  TRUE`
	`2   2  TRUE`
	`3   3 FALSE`
	`4   4 FALSE`

### Names

* R objects can be given names, so that it will be easier and self describing.
* Example:
	`person <-c("Jay","18","180")`
	`names(person)<-c("Name","Age","Height")`
* List can have names too. Example:
	`m<-list(name="Jay",age=18,height=180)`
* Matrix can have names to. They are called __dimnames__. Example:
	`m<-matrix(1:4,nrow=2,ncol=2)`
	`dimnames(m)<-list(c("man","woman"),c("age","height"))`
	
----	
				
## Subsetting

### Subsetting Operators

* There are three main operators on subsetting R objects. `[`,`[[`,`$`
* `[` Returns object of the same class as original.
* `[[` Returns elements of list or data frame. Can be any data types / class.
* `$` Returns elements of list or data frame by name. 

### Subsetting in a vector:

* Examples: Using Numeric Index:
    * `x<-c("a","b","c","d","b","a","e")` For this vector.
    * `x[5]` will return "b"
    * `x[1:4]` will return "a,b,c,d"
				
* Examples: Using Logical Index:
    * `x[x>"a"]` will return "b,c,d,b,e"
    * `u<-x>"a"` Now printing "u" will return Boolean values. 
    * and `x[u]` will return "b,c,d,b,e"	
	
### Subsetting in a Matrix:

* Examples: 
    * `x<-matrix(1:6, 2,3)` for this matrix.
    * `x[1,2]` will return a 3.
    * `x[1,]` will return 1,3,5.
    * `x[,2]` will return 3,4.
* Matrix __drops the dimension__ by default. To avoid dropping dimension use `drop=FALSE` argument.
* Example:
	* `mat<-matrix[1:12,3,4]` for this matrix.
	* `mat[1,2,drop=FALSE]` will return a matrix structure.
* `sub<-subset(data, data$Ozone>31 & data$Temp>90)` will give subset of "data" which matches the condition.


### Subsetting a List:

* Examples:
	* `li<-list(first = 1:10, second = 0.5)` for this list.
	* `li[1]` will return "$first" and elements 1 to 10.
	* `li[[1]]` will return elements 1 to 10.
	* `li$first` will return elements 1 to 10.
	* `li$second` will return 0.5.
	* `li[["second"]]` will return 0.5.
	* `li["second"] will return "$second" and 0.5.
* Examples:
	* `li<-list(first = 1:4, second = 0.05, third = "hello")` for this list.
	* `li[c(1,3)]` will give out first and third named elements. 
	* `x<-"third"` for this character class vector, using it with double brackets.
	* `li[[x]]` will return "hello"
	* `li$third` will return "hello"
* Double Subsetting
* Examples:
	* `li<-list(a=list(10,12,14),b=c(3.14,2.81))` for this list.
	* `li[[c(1,3)]]` will return 14.
	
### Partial Matching

* Partial matching can be achieved using [[ and $.
* Examples:
	* `li<-list(foobar = 1:5)` for this list. 
	* `li$f` will return 1,2,3,4,5. __$__ actually looks for a name starting/matching with __f__.
	* How ever double bracket does not work like this without an extra argument __exact__ .
	* `li[["f", exact = FALSE]]` This will return 1,2,3,4,5.

### Removing NA Values

* This gets to be a common task in data science.
* Most realistic data will have lots of missing values.
* Example:
	* `x<-c(1:4,NA,NA,6,9)` for this vector.
	* `bad<-is.na(x)` This creates a logical vector called bad, which tells us where the NAs are, so that we can use to remove them.
	* `x[!bad]` will return all the values but NAs.
* If there are multiple vectors that I want to take the subset with no missing values.
* Example:
	* `a<-c(1,2,NA,NA,3,4,NA,NA)`,`b<-c(1,2,NA,NA,6,7,NA,NA)` for these two vectors, same length, same NA placements.
	* `good<-complete.cases(a,b)` The __compete.cases()__ method will give logical vector containing NAs for both vectors.
	* So `a[good]` and `b[good]` will give 1,2,3,4 and 1,2,6,7 respectively.


## Vectorized Operations

### Operations on a Vector

* We can add, subtract, divide, multiply or do some logical operations with two vectors.
* Examples:
	* For vectors `x<-1:4` and `y<-6:9` these vectors are same sized.
	* We can perform `x+y`, `x>2`, `x>=2`, `y==8`, `x*y`, `x/y` etc.
	
### Operations on a Matrix

* Examples:
	* For matrices `x<-matrix(1:4,2,2)` and `y<-matrix(rep(10,4),2,2)`
	* Element wise matrices multiplication `x*y`
	* True Multiplication of the matrices `x%*%y`
	* Element wise division: `x/y`
	

## Read & Write Data in R

### Tabular Data

* There are number of way to read data in R.
	* `read.table()` , `read.csv()` for reading tabular data. Commonly used, reads text files that contains data in rows and column format and returns data frame in R.
	* `readlines()` for reading lines of a text file. Gives character vector.
	* `source()` reading R code files (inverse of `dump()`). 
	* `dget()` for reading in R code files (inverse of `dput()`).
	* `load()` for reading in saved workspaces. Reads binary objects.
	* `unserialize()` for reading single R objects in binary form.

* There are number of way to read data in R. These pair up with reading analogue.
	* `write.table()` 
	* `writeLines()`
	* `dump()`
	* `dput()`
	* `save()`
	* `serialize()`

* Please refer documentation for argument lists.
* Reading large data will choke R. So please read help before reading large data set. Help file will point to optimization tricks.
* `colClasses = numeric` is an example, this will avoid R to decide on classes of all columns.
* Another approach is to read only first 100 records. Use `nrows=100` argument.
* Example Questions to ask before reading large data:
	* How much memory do you have at your disposal?
	* Operating systems, is it 32 or 64 bits ?
	* How can read be optimized? Can arguments that help speed up things applied?
* How to quickly calculate how much memory will read consume ?
	* If all numeric each number needs 8 bytes.
	* Multiply number of numbers by 8 byte and do the math, and divide by 2^20 to get value in MB.
	

### Textual Formats

* dumping `dump()` and dputing `dput()` are the common mechanism. 
* These are typically useful when there are lots of metadata present. Metadata helps readability.
* Textual formats works better with versioning systems as well. 
* Examples:
	* `y<-data.frame(a=1,b="a")` for this data frame.
	* `dput(y)` this will __dput__ the object, and produce some code. We dont want to see the code generated actually in the console, so we save it in a file.
	* `dput(y,file="y.R")` __dput__ this essentially, __writes R code to reconstruct the R object__.
	* Now we can use `dget()` function to load the "y.R" file back in for future use.
* The difference between `dput()` and `dump()` is `dput()` can be used on single R object, however `dump()` can be used with multiple R objects.
* Examples:
	* We have three R objects `x<-"foo"`,`y<-data.frame(a=1,b="a")`,`z<-1:100` 
	* Now we dump all these using `dump("x","y","z",file="data.R")` in a data.R file.
	* Later in time we can source the data.R file and use the objects. `source("data.R")`

### Interfaces to the Outsite World

* Data can be read using connections interfaces.
* Types can be file, gzfile, bzfile, url etc. 
* Example: File
	* `con<-file("foo.txt","r")` connection to file in read mode.
	* `data<-read.csv(con)` reading csv to the data object using the connection.
	* `close(con)` closing the connection.
	* all of the above can be done by simply `data<-read.csv("foo.txt")`
* Example: gzfile
	* `con<-gzfile("foo.gz")` connection to file in read mode.
	* `x<-readLines(con,10)` reads first 10 lines of the file and puts in x object.
* Similarly we can use `writeLines()` function to write in a character vector to the file.
* Example: URL
	* `con<-url("http://google.com/","r")` open connection in a read more for the specified url.
	* `x<-readLines(con)` read and put data in x.
	


