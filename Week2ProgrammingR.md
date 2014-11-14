Week 2 Programming with R
==========================
* `search()` will show all the loaded packages in the current environment.

## Control Structures

* Control the flow of the R program.
* Basic Constructs:
	* if,else
	* for
	* while : Takes a logical expression.
	* repeat : execute infinite loop. This depends on break to stop. So apply break under some condition.
	* break
	* next : skip an iteration of a loop.
	* return : exit a function
* Used when writing R program or R function, not in the console usually. In consoles we use *apply functions.
* Different way of using __if,else__ in R:
			
	`y<-if(x>3) {10} else {0}` This will assign value to y depending on the control.
* `seq_along(vector_name)` This can be used in loops, where `seq_along()` will return length of the vector.
* Examples:
	* `x<-c("a","b","c","d")` for this vector.
	* `for(i in 1:4){print(x[i])}`
	* `for(i in seq_along(x)){print(x[i])}`
	* `for(letter in x){print letter}` This will print letters directly.
	* `for(i in 1:4)print(x[i])` Oneliner.
* Matrix requires nested for loops. 
* Examples:
	* `m<-matrix(1:12,3,4)` for this matrix.
	
	for(i in seq_len(nrow(m))){
		for(j in seq_len(ncol(m))){
			print(x[i,j])
		}
	}
	


## Functions in R

* Look at the FirstRFunction.R file.
* Write functions in a separate text file. Preferably in a R package.
* Look at MatrixRFunction.R fil for simple Matrix function.
* Syntax: `f<-function(<arguments>){##do something}`

### Lazy Evaluation
* __Lazy Evaluation__ : Arguments of the function is only evaluated as they are needed. Look at the R file explaining this.

### The "..." Argument
* __...__ argument indicates a variable number of arguments that are usually passed on to other functions.
* This is typically useful when extending a function.
* This is also necessary when the number of arguments passed to the function cannot be known in advance. 
* Example: `args(paste)` and `args(cat)`
* Arguments which comes after three dots, must me named explicitly.
* Example: Where we extend plot function to our own myplot.
			
			myplot<-function(x,y,typ="l",...){
					plot(x,y,type=typ,...)
			}

* This can be used for generic functions too. More on this during OOP.

## Scoping Rules

* How does R know what value to assign to a symbol ? 
* R uses lexical scoping or static scoping.
* Example:
	* `lm<-function(x){x*x}` for this funciton.

### Lexical Scoping
* Paper: https://www.stat.auckland.ac.nz/~ihaka/downloads/lexical.pdf
* Means, the values of free variables are searched for in the environment in which the function was defined.
* Example: Here z is the free variable.
		
		f<-function(x,y){
			x^2 + y/z
		}
* The free variable is not found in the workspace and its searched in parent environment then global environment.
* The idea is we can define global variable.
* Scoping rule really come into play when functions are defined inside another function. 
* Example:
			
			make.power<-function(n){
				pow<-function(x){
					x^n
				}
				pow
			}
			
	* Above function can be used as :
			
			> h<-make.power(3)
			> h(2)
			[1] 8

### Exploring a Function Closure.

* This will answer what is in the function's environment?
* Example: Using above nested function example.
	* `ls(environment(h))`
	* `get("n", environment(h))`
	

### Optimization

* There are few optimization routines in R like:
	* optim - optimizes multiple variables.
	* nlm
	* optimize - optimizes single variable only.
	* All of above functions requires a function to be passed whose argument is a vector or parameters.
* When you define a function inside another function, printing it out will show up a environment tag which points to the environment where the function was defined.
* 

	
## Coding Standards
* Always use a text editor.
* Indentations.
* Limit how wide you want your line of code be.
* Function length - Keep is as short and simple. K.I.S.S.

## Dates and Times
* In R dates are represented by the __Date__ Class.
* Times are represented by __POSIXct__ or the __POSIXlt__ class.
* Example:
	* For the date 1970-01-01 we can treat this as date vector by doing `x<-as.Date("1970-01-01")`
* Few generic functions we can use:
	* weekdays: gives the day of the week.
	* months: gives the month name.
	* quarters: give the quarter numbers("Q1","Q2","Q3",or "Q4")
* __strptime()__ this will convert date/time formats.
* Example:
	* `dateString<-c("January 10, 2012 10:40","December 9, 2011 9:10")`
	* `x<-strptime(dateString, "%B %d, %Y %H: %M")
* Once dates are in same format, it will be possible to do arithmetic and logical operations on them.
* Date time classes takes care of leap year, time zone etc. automatically. 
* Plotting functions will recognize date/time objects.
	
	
