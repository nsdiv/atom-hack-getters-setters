<?hh // strict
// Copyright 2004-present Facebook. All Rights Reserved.

namespace Flooved\Docs\ApiBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Job
 *
 * @ORM\Table()
 * @ORM\Entity
 */
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


    public function __construct()
    {
        $this->started = new \DateTime;
        $this->conversionDone = false;
    }

}
