# 'Growing Together'
#
#A program in R to promote unity and collaboration among people

#Getting started

#1. Create a vector containing the names of the people you are hoping to collaborate with
people <- c("John", "Mark", "Katie", "Emily", "Thomas")

#2. Create a vector containing a description of each person
descriptions <- c("entrepreneur", "musician", "artist", "teacher", "developer")

#3. Create a data frame combining the people vector with their descriptions
people_frame <- data.frame(People=people, Descriptions=descriptions)

#4. Create a function to take two arguments - a person's name and their description
make_introduction <- function(person_name, person_desc) {
  paste0("Hello, my name is ", person_name, " and I am a ", person_desc, ".")
}

#5. Use loop to loop through the data frame and print out the introductions of each person 
for (i in 1:nrow(people_frame)) {
  introduction <- make_introduction(people_frame[i,1], people_frame[i,2])
  print(introduction)
}

#6. Create a data frame to contain the topics you are all planning to work on.
topics_frame <- data.frame(
  Topic = c("Marketing", "Music Creation", "Painting", "Teaching Curriculum", "Web Development"),
  Person = people
)

#7. Create a function to call the person responsible for a given topic
call_person <- function(topic_name) {
  person <- topics_frame[topics_frame$Topic == topic_name, "Person"]
  print(paste0("Let's call ", person, " to discuss this topic!"))
}

#8. Write a loop to print out the topics and the person responsible for each one
for (i in 1:nrow(topics_frame)) {
  print(paste0(topics_frame[i,1], " is led by ", topics_frame[i,2]))
  call_person(topics_frame[i,1])
}

#9. Create a function to create a basic introduction for each project
make_project_intro <- function(project_name, project_person) {
  paste0("This project, ", project_name, ", is led by ", project_person, ".")
}

#10. Write a loop to print out the intro for each project
for (i in 1:nrow(topics_frame)) {
  project_intro <- make_project_intro(topics_frame[i,1], topics_frame[i,2])
  print(project_intro)
}

#11. Create a function to create a list of tasks for each project
make_project_tasks <- function(project_name, project_person) {
  paste0("Let's create a list of tasks for ", project_name, " led by ", project_person, ".")
}

#12. Write a loop to print out the tasks for each project
for (i in 1:nrow(topics_frame)) {
  project_tasks <- make_project_tasks(topics_frame[i,1], topics_frame[i,2])
  print(project_tasks)
}

#13. Create a function to assign a task for each project
assign_task <- function(project_name, project_person, task_name) {
  paste0("Let's assign ", project_person, " the task of ", task_name, " for ", project_name, ".")
}

#14. Write a loop to assign tasks for each project
projects <- c("Marketing", "Music Creation", "Painting", "Teaching Curriculum", "Web Development")
tasks <- c("creating a marketing plan", "developing a new song", "painting a mural", 
            "designing a curriculum", "building a website")

for (i in 1:length(projects)) {
  assign_task(projects[i], topics_frame[i,2], tasks[i])
  print(assign_task)
}

#15. Create a function to check on the progress of each project
check_progress <- function(project_name, project_person) {
  paste0("Let's check in with ", project_person, " to see how their progress is on ", project_name, ".")
}

#16. Write a loop to check on the progress of each project
for (i in 1:nrow(topics_frame)) {
  check_in <- check_progress(topics_frame[i,1], topics_frame[i,2])
  print(check_in)
}

#17. Create a function to thank each person for their contribution
thank_person <- function(project_person) {
  paste0("Let's thank ", project_person, " for their contribution to the project.")
}

#18. Write a loop to thank each person for their contribution
for (i in 1:length(people)) {
  thank_person <- thank_person(people[i])
  print(thank_person)
}

#19. Create a function to celebrate the accomplishments of each person
celebrate_accomplishment <- function(project_name, project_person) {
  paste0("Let's celebrate the accomplishment of ", project_person, " on the project ", project_name, ".")
}

#20. Write a loop to celebrate the accomplishments of each person
for (i in 1:nrow(topics_frame)) {
  celebrate <- celebrate_accomplishment(topics_frame[i,1], topics_frame[i,2])
  print(celebrate)
}

#Conclusion

#21. Print a conclusion statement
print("We have successfully created an environment of collaboration and unity!")