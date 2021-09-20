<?php

use yii\db\Migration;

/**
 * Class m200731_074625_init_rbac
 */
class m200731_074625_init_rbac extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
      $auth = Yii::$app->authManager;

      $employeeindex = $auth->createPermission('employee/index');
      $employeeindex->description = 'Index Employee';
      $auth->add($employeeindex);

      $employeecreate = $auth->createPermission('employee/create');
      $employeecreate->description = 'Create Employee';
      $auth->add($employeecreate);

      $employeeview = $auth->createPermission('employee/view');
      $employeeview->description = 'View Employee';
      $auth->add($employeeview);

      $employeeupdate = $auth->createPermission('employee/update');
      $employeeupdate->description = 'Update Employee';
      $auth->add($employeeupdate);

      $employeedelete = $auth->createPermission('employee/delete');
      $employeedelete->description = 'Delete Employee';
      $auth->add($employeedelete);

      $licensesindex = $auth->createPermission('licenses/index');
      $licensesindex->description = 'Index Licenses';
      $auth->add($licensesindex);

      $licensescreate = $auth->createPermission('licenses/create');
      $licensescreate->description = 'Create Licenses';
      $auth->add($licensescreate);

      $licensesview = $auth->createPermission('licenses/view');
      $licensesview->description = 'View license';
      $auth->add($licensesview);

      $licensesupdate = $auth->createPermission('licenses/update');
      $licensesupdate->description = 'Update Licenses';
      $auth->add($licensesupdate);

      $licensesdelete = $auth->createPermission('licenses/delete');
      $licensesdelete->description = 'Delete Licenses';
      $auth->add($licensesdelete);

      $author = $auth->createRole('author');
      $auth->add($author);
      $auth->addChild($author, $employeeindex);
      $auth->addChild($author, $employeecreate);
      $auth->addChild($author, $licensescreate);
      $auth->addChild($author, $licensescreate);
      $auth->addChild($author, $licensesview);
      $auth->addChild($author, $employeeview);

      $peace = $auth->createRole('peace');
      $auth->add($peace);
      $auth->addChild($peace, $employeeupdate);
      $auth->addChild($peace, $employeedelete);
      $auth->addChild($peace, $licensesupdate);
      $auth->addChild($peace, $licensesdelete);
      $auth->addChild($peace, $author);

      $auth->assign($author, 2);
      $auth->assign($peace, 1);

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m200731_074625_init_rbac cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m200731_074625_init_rbac cannot be reverted.\n";

        return false;
    }
    */
}
