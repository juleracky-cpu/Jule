# Highridge Construction Company - weekly payment slips
# Jule

import random

# part 1 - create workers list (more than 400)
print("starting to make workers...")

worker_names = []
worker_genders = []
worker_salaries = []
worker_levels = []

number_of_workers = 405  # a bit more than 400

# define possible values outside the loop for efficiency
first_names = ["John", "Mary", "Peter", "Sarah", "Jane", "Grace", "James", "David", "Anna"]
last_names = ["Omondi", "Nakato", "Mukasa", "Achieng", "Kagwa", "Ssanyu", "Nalwanga", "Okello"]
genders = ["Male", "Female"]

for i in range(number_of_workers):
    # generate a random worker
    name = random.choice(first_names) + " " + random.choice(last_names)
    gender = random.choice(genders)
    # salary range chosen to allow assignment of the various levels
    salary = random.randint(5000, 35000)

    worker_names.append(name)
    worker_genders.append(gender)
    worker_salaries.append(salary)
    worker_levels.append("")

    if i < 6:
        print("worker", i + 1, "→", name, gender, salary)

print("created", len(worker_names), "workers ok")

# part 2 - generate slips with for loop and conditions
print("\nHIGH RIDGE CONSTRUCTION COMPANY")
print("WEEKLY PAYMENT SLIPS (showing first 10 only)")
print("------------------------------------------------------------")
print("No   Name                      Gender   Salary    Level")
print("------------------------------------------------------------")

for i in range(len(worker_names)):
    current_salary = worker_salaries[i]
    current_gender = worker_genders[i]
    level = "Standard"
    
    try:
        if current_salary > 10000 and current_salary < 20000:
            level = "A1"
        
        if current_salary > 7500 and current_salary < 30000 and current_gender == "Female":
            level = "A5-F"   # note - this can change A1 to A5-F if both true
        
        worker_levels[i] = level
        
        # show only first 10
        if i < 10:
            print(str(i+1).ljust(4) + 
                  worker_names[i].ljust(26) + 
                  current_gender.ljust(9) + 
                  str(current_salary).rjust(8) + 
                  "   " + level)
            
    except Exception as e:
        print("problem with worker number", i+1)
        worker_levels[i] = "ERROR"
        # Highridge Construction Company - weekly payment slips
# Jule - R version

set.seed(42)  # for reproducibility

# part 1 - create workers list (more than 400)
cat("starting to make workers...\n")

worker_names <- c()
worker_genders <- c()
worker_salaries <- c()
worker_levels <- c()

number_of_workers <- 405  # a bit more than 400

# define possible values outside the loop for efficiency
first_names <- c("John", "Mary", "Peter", "Sarah", "Jane", "Grace", "James", "David", "Anna")
last_names <- c("Omondi", "Nakato", "Mukasa", "Achieng", "Kagwa", "Ssanyu", "Nalwanga", "Okello")
genders <- c("Male", "Female")

for (i in 1:number_of_workers) {
  # generate a random worker
  name <- paste(sample(first_names, 1), sample(last_names, 1))
  gender <- sample(genders, 1)
  # salary range chosen to allow assignment of the various levels
  salary <- sample(5000:35000, 1)
  
  worker_names <- c(worker_names, name)
  worker_genders <- c(worker_genders, gender)
  worker_salaries <- c(worker_salaries, salary)
  worker_levels <- c(worker_levels, "")
  
  if (i <= 6) {
    cat(paste("worker", i, "→", name, gender, salary, "\n"))
  }
}

cat(paste("created", length(worker_names), "workers ok\n"))

# part 2 - generate slips with for loop and conditions
cat("\nHIGH RIDGE CONSTRUCTION COMPANY\n")
cat("WEEKLY PAYMENT SLIPS (showing first 10 only)\n")
cat("------------------------------------------------------------\n")
cat("No   Name                      Gender   Salary    Level\n")
cat("------------------------------------------------------------\n")

for (i in 1:length(worker_names)) {
  current_salary <- worker_salaries[i]
  current_gender <- worker_genders[i]
  level <- "Standard"
  
  tryCatch({
    if (current_salary > 10000 && current_salary < 20000) {
      level <- "A1"
    }
    
    if (current_salary > 7500 && current_salary < 30000 && current_gender == "Female") {
      level <- "A5-F"   # note - this can change A1 to A5-F if both true
    }
    
    worker_levels[i] <- level
    
    # show only first 10
    if (i <= 10) {
      output <- sprintf("%-4d%-26s%-9s%8d   %s",
                        i,
                        worker_names[i],
                        current_gender,
                        current_salary,
                        level)
      cat(paste(output, "\n"))
    }
    
  }, error = function(e) {
    cat(paste("problem with worker number", i, "\n"))
    worker_levels[i] <<- "ERROR"
  })
}

cat(paste("\nfinished processing all workers →", length(worker_names), "\n"))
        # continue anyway

print("\nfinished processing all workers →", len(worker_names))
