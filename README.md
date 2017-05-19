Hack Getters and Setters
=======================

With Hack Getters and Setters you can automatically generate _Getters_ and _Setters_ for your Hack classes.

The code produced is PSR compatible

Features:
---------

* Generate Getters, Setters or Both
* Select all variables or just some via UI
* Control method scope via a DocBlock tag
* intelligent guessing of variable names, if you use descriptive variable names you do not need to provide a description, the method comment will set accordingly
* supports _ in property names



**Example Hack Code**


```Hack
class Job extends AbstractEntity
{
    /**
     * @protected
     * @ORM\Column( type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private int $id;

    /**
     * the job id
     * @read-only
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private string $code;

    /**
     * snake cased var
     *
     * @var string
     */
    private string $snaked_case_var;

    /**
     * private underscore variable
     *
     * @var string
     */
    private string $_underscored;

    /**
     * @var Job
     */
    private Job $smartVariableName;

    private array<string> $string_array;

    private dict<string, mixed> $dict;


    public function __construct(
      private int $constructInt,
      private Entity $constructObj,
    )
    {
        $this->started = new \DateTime;
        $this->conversionDone = false;
    }
    
}
```

**Example class after generating Getters and Setters**

```Hack
class Job extends AbstractEntity
{
    /**
     * @protected
     * @ORM\Column( type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private int $id;

    /**
     * the job id
     * @read-only
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private string $code;

    /**
     * snake cased var
     *
     * @var string
     */
    private string $snaked_case_var;

    /**
     * private underscore variable
     *
     * @var string
     */
    private string $_underscored;

    /**
     * @var Job
     */
    private Job $smartVariableName;

    private array<string> $string_array;

    private dict<string, mixed> $dict;


    public function __construct(
      private int $constructInt,
      private Entity $constructObj,
    )
    {
        $this->started = new \DateTime;
        $this->conversionDone = false;
    }


    /**
     * Get the value of Id
     *
     * @return int
     */
    protected function getId(): int
    {
        return $this->id;
    }

    /**
     * Set the value of Id
     *
     * @param int id
     *
     * @return self
     */
    protected function setId($id): void
    {
        $this->id = $id;

        return;
    }

    /**
     * Get the value of the job id
     *
     * @return string
     */
    public function getCode(): string
    {
        return $this->code;
    }

    /**
     * Set the value of the job id
     *
     * @param string code
     *
     * @return self
     */
    private function setCode($code): void
    {
        $this->code = $code;

        return;
    }

    /**
     * Get the value of snake cased var
     *
     * @return string
     */
    public function getSnakedCaseVar(): string
    {
        return $this->snaked_case_var;
    }

    /**
     * Set the value of snake cased var
     *
     * @param string snaked_case_var
     *
     * @return self
     */
    public function setSnakedCaseVar($snaked_case_var): void
    {
        $this->snaked_case_var = $snaked_case_var;

        return;
    }

    /**
     * Get the value of private underscore variable
     *
     * @return string
     */
    public function getUnderscored(): string
    {
        return $this->_underscored;
    }

    /**
     * Set the value of private underscore variable
     *
     * @param string _underscored
     *
     * @return self
     */
    public function setUnderscored($_underscored): void
    {
        $this->_underscored = $_underscored;

        return;
    }

    /**
     * Get the value of Smart Variable Name
     *
     * @return Job
     */
    public function getSmartVariableName(): Job
    {
        return $this->smartVariableName;
    }

    /**
     * Set the value of Smart Variable Name
     *
     * @param Job smartVariableName
     *
     * @return self
     */
    public function setSmartVariableName(Job $smartVariableName): void
    {
        $this->smartVariableName = $smartVariableName;

        return;
    }

    /**
     * Get the value of String Array
     *
     * @return array<string>
     */
    public function getStringArray(): array<string>
    {
        return $this->string_array;
    }

    /**
     * Set the value of String Array
     *
     * @param array<string> string_array
     *
     * @return self
     */
    public function setStringArray(array<string> $string_array): void
    {
        $this->string_array = $string_array;

        return;
    }

    /**
     * Get the value of Dict
     *
     * @return dict<string, mixed>
     */
    public function getDict(): dict<string, mixed>
    {
        return $this->dict;
    }

    /**
     * Set the value of Dict
     *
     * @param dict<string, mixed> dict
     *
     * @return self
     */
    public function setDict(dict<string, mixed> $dict): void
    {
        $this->dict = $dict;

        return;
    }

    /**
     * Get the value of Construct Int
     *
     * @return int
     */
    public function getConstructInt(): int
    {
        return $this->constructInt;
    }

    /**
     * Set the value of Construct Int
     *
     * @param int constructInt
     *
     * @return self
     */
    public function setConstructInt($constructInt): void
    {
        $this->constructInt = $constructInt;

        return;
    }

    /**
     * Get the value of Construct Obj
     *
     * @return Entity
     */
    public function getConstructObj(): Entity
    {
        return $this->constructObj;
    }

    /**
     * Set the value of Construct Obj
     *
     * @param Entity constructObj
     *
     * @return self
     */
    public function setConstructObj(Entity $constructObj): void
    {
        $this->constructObj = $constructObj;

        return;
    }

}
```

As you can see if get to trouble of commenting your variables, the generated functions can be used without modification.

This is an huge time saver!

Special DocBlock tags
---------------------
__@internal__: getter and setter will be private

__@private__: getter and setter will be private

__@protected__: getter and setter will be protected

__@read-only private|protected__: getter will be public, setter will be private or protected (defaults to private)

Settings:
-----------
__doNotTypeHint__: an array of items that when present in *@type* or *@var* declarations are ignored and not used as type hint

__camelCasedMethodNames__: method names will follow PSR rules
PSR states that all method names must be camel cased, if set to false method names won't be Camel Cased

__getterTemplate__: the template for the getter

__setterTemplate__: the template for the setter

## Default templates

A rudimentary template editor is available at ```Packages -> Hack Getters and Setters -> Template Editor```

### Getter
```Hack
\ \ \ \ /**\n
\ \ \ \ * Get the value of %description% \n
\ \ \ \ * \n
\ \ \ \ * @return %type%\n
\ \ \ \ */\n
\ \ \ %scope% function %methodName%(): %type%\n
\ \ \ {\n
\ \ \ \ \ \ \ return $this->%variable%;\n
\ \ \ }\n
\n
```

### Setter
```Hack
\ \ \ \ /** \n
\ \ \ \ * Set the value of %description% \n
\ \ \ \ * \n
\ \ \ \ * @param %type% %variable%\n
\ \ \ \ * \n
\ \ \ \ * @return self\n
\ \ \ \ */\n
\ \ \ %scope% function %methodName%(%typeHint%$%variable%): void\n
\ \ \ {\n
\ \ \ \ \ \ \ $this->%variable% = $%variable%;\n
\n
\ \ \ \ \ \ \ return;\n
\ \ \ }\n
\n
```
