Study - helper
==============

#Description:

This is a new application I want to work on. The goal is to make studying more effective by providing an easily accessible web interface for my course material. The App hence serves as a library of course material and a study/revision book. I will focus on efficiency by first getting a QA app set up with a comprehensive structure. 

## Structure:
- A class (say 2015 class) This basically allow user to get back to previous years material.
- A course (either code name or course name)
- A time period (term, semester or maybe whole year at the course level
- A Chapter unless course structured in modules, in which case chapters will be under a module
- At this level, the user should be able to create a either a topic under the given chapter or questions directly
- For each question, a solution is required. I would like it to be in different formats: portable document format (pdf), text, image, audio or video. 

##Tools:
Obviously since it's a web app, I will be using HTML, CSS, JavaScript.
Mainly rails 4 ruby gems...

## Functionality:
- I would like to be able to search using a key word,
- While searching, specify some scope like 2015, Computer Science, Operating System
- Ajax for text prediction
- View files like power points, word, pdf, .txt. If possible audio and video media(Investigate usage of Youtube to achieve this)
- Hide or show the answer to the question
- Add a question without an answer 
