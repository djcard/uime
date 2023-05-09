# uime
A simple templating tool for Coldbox apps

## Background
Tools like Bootstrap make it easy to create user interfaces which are responsive, consistent and so on.
However, you still need to get the HTML and class names correct which means referencing the web site, 
perhaps copying and pasting and so on. This is fine but if you're more at home with JSON than CSS, this time
spent can feel like diving into another language. 

UIME components accept a JSON object with some required keys and return the boiler plate HTML from the 
Bootstrap 5 library. This is by no means complete but I'll flesh it out as needed. PRs welcome. :)

Each component accepts the basic data that it needs to create its element as well as an id and class list to be added to the top element.

## Accordian 
The Accordian control located at https://getbootstrap.com/docs/5.3/components/accordion/
Each item should include:
 - label: string
 - html: an html string to be in the panel

Class: uimeAccordian

 

## Button Group
Creates a button group as seen at https://getbootstrap.com/docs/5.3/components/button-group/

arguments
data - an array of structs. Each item needs:
    - label
    - action - The name of the JS function to call
    - submitValue - the value to submit to the action function
        or
    - click - the entire JS which should be called when the button is clicked
    - class - choice of primary, secondary, success, danger, warning, info, light, dark, link. Defaults to primary
    
class: uimeButtonGroup

## Equal Columns
Create a row with equallly spaced columns in side of it. 
arguments: 
data - An array with each index being an html string
id - an optional id
classes- an option space delimited list of classes to add to the row div

class: uimeRow uimeEqualRow

## Select
Creates a select control as seen at https://getbootstrap.com/docs/5.3/forms/select/

arguments:
data: an array of structs.
    - name - required. The name of the select for the form submission
    - value - the preselected value of the control
    - id - options
    - classes - classes applied to the select
    - options - an array of structs representing the options
        - label
        - value
        - classes
        

class: uimeSelect uimeOption


## tabs
Creates a tabbed panel as seen at https://getbootstrap.com/docs/5.3/components/navs-tabs/#tabs

arguments
tabData - 





## Change Log
0.0.5 - Added suppport for Table
0.0.4
0.0.3 - Added the `openState` parameter to accordian to start all open ("open"), first one open ("first") or all closed (anything including blank)
0.0.2 - Added documentation and id / class functionality for existing components; Added BaseUIME component
0.0.1 - Initial Commit