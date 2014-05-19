
module.exports =
class ClassWritter

    constructor: (@functions) ->

    writeGetter : (variable, type, description, scope = 'public') ->
        # console.log(variable, type, description, scope = 'public')
        name  = "get" + variable.charAt(0).toUpperCase() + variable.slice 1

        if description.length == 0
            description = variable


        if name in @functions
            console.log(name, 'function exists, not adding')
            return ''

        return "
\ \ \ \ /** \n
\ \ \ \ * Get the value of %description% \n
\ \ \ \ * \n
\ \ \ \ * return %type%\n
\ \ \ \ */\n
\ \ \ \ %scope% function %name%()\n
\ \ \ \ {\n
\ \ \ \ \ \ \ \ return $this->%variable%;\n
\ \ \ \ }\n
\n
        ".replace /%description%/g, description
         .replace /%name%/g, name
         .replace /%variable%/g, variable
         .replace /%type%/g, type
         .replace /%scope%/g, scope

    writeSetter : (variable, type, description, scope = 'public') ->
        # console.log(variable, type, description, scope = 'public')
        name  = "set" + variable.charAt(0).toUpperCase() + variable.slice 1

        if description.length == 0
            description = variable
        

        if name in @functions
            console.log(name, 'function exists, not adding')
            return ''

        return "
\ \ \ \ /** \n
\ \ \ \ * Set the value of %description% \n
\ \ \ \ * \n
\ \ \ \ * return %type%\n
\ \ \ \ */\n
\ \ \ \ %scope% function %name%($value)\n
\ \ \ \ {\n
\ \ \ \ \ \ \ \ $this->%variable% = $value;\n
\ \ \ \ }\n
\n
        ".replace /%description%/g, description
         .replace /%name%/g, name
         .replace /%variable%/g, variable
         .replace /%type%/g, type
         .replace /%scope%/g, scope