ή          μ               Ό  G   ½  j        p    σ  v     4     t   Ή    .  Z  4       4   ¬     α  ί  φ  Ο   Φ
  	   ¦  a   °  L        _     }            h  °  f          g     |  m  8   κ  k   #  |     ©     p   Ά  +   '     S    Τ     s       4   0     e  ―  z  €   *  	   Ο  B   Ω  F        c               ’    ΄  F   Α  p     K   y   :guilabel:`Creation time` : AutoML λͺ¨λΈμ΄ μμ±λ μκ°μλλ€. :guilabel:`Description` : :ref:`nsml automl memo<automl memo>` μΌλ‘ μλ ₯ν λ΄μ©μ΄ νμλ©λλ€. :guilabel:`Hypterparameter Configuration` : :ref:`Configuration file<configuration file>` μ μ μλ μ€μ μ΄ λνλ©λλ€. :guilabel:`Job Status` : μ μ²΄ NSML sessionλ€μ΄ μ§νλλ μνλ₯Ό νμΈν  μ μμ΅λλ€. μμΈν λ΄μ©μ :ref:`AutoML session and NSML session <automl and NSML session>` μ μ°Έκ³ νμμ sessionλ€μ statusμ λν΄ λ€μ νλ² νμΈνμκΈ° λ°λλλ€. :guilabel:`Job configuration` : :ref:`Configuration file<configuration file>` μ μ μλ μ€μ μ΄ λνλ©λλ€. :guilabel:`Name` : AutoML μΈμμ μ΄λ¦μλλ€. :guilabel:`Running/Exited` : νμ¬ μ§ν μ€μΈ NSML μΈμκ³Ό μ’λ£λ NSML μΈμμ κ°―μλ₯Ό λνλλλ€. :guilabel:`Status` : νμ¬ AutoML μΈμμ μνμλλ€. Running, Stopped, Exited 3κ°μ§μ μνλ‘ μ΄λ£¨μ΄μ§λλ€. Runningνκ³  μλ NSML μΈμμ μμμ΄ λͺ¨λ λλλ©΄ μλμΌλ‘ Exited μνκ° λ©λλ€. μ§μ  μ¬λ¬λΆμ΄ AutoMLμ stopμν¨ κ²½μ°μλ νμ¬ μ§ν μ€μΈ NSML μΈμμ΄ λλ λ€μ Exited μνκ° λ©λλ€. λ°λ‘ λͺ¨λ  μΈμμ μ’λ£μν€κ³  μΆλ€λ©΄ ``nsml automl stop -f`` λͺλ Ήμ΄λ₯Ό μ¬μ©νμκΈ° λ°λλλ€. :ref:`nsml automl stop<automl stop>` :guilabel:`Stop tuning job` μ λλ₯΄λ©΄ running μνκ° μ€λ¨λ©λλ€. νμ¬ μ§ννκ³  μλ NSML sessionμ μμμ΄ λ§λ¬΄λ¦¬λ ν μ΅μ’ μ€λ¨λ©λλ€. ``nsml automl stop AUTOML_SESS_NAME`` κ³Ό κ°μ ν¨κ³Όλ₯Ό κ°κ³  μκ³ , ``-f`` optionμ λ£μ΄μ λΉμ₯ sessionμ μ€λ¨νκ³  μΆλ€λ©΄ CLIλ₯Ό μ¬μ©νμμΌ ν©λλ€. :ref:`Dashboard <Dashboard>` :ref:`How to go to Visual Analytics <how to go vis>` AutoML Web Dashboard AutoMLμμλ νλ κ³Όμ μ νμΈν  μ μλλ‘ web visualizationμ μ§μν©λλ€. hyperparameter tuning κ²°κ³Όλ₯Ό μ½κ² λΆμνκ³ , fine-tuningμ΄ κ°λ₯ν μκ°ν κΈ°λ° λΆμ μμ€νμλλ€. Runningν μΈμλ€μ λ³Ό μ μλ ``Dashboard`` μ λΆμν  μ μλ ``Visual Analytics`` λ‘ κ΅¬μ±λμ΄ μμ΅λλ€. μ΄ νμ΄μ§μμλ ``Dashboard`` λ₯Ό μ€λͺνκ³ , λ€μ νμ΄μ§μμ ``Visual Analytics`` μ λν΄ μμλ³΄κ² μ΅λλ€. AutoMLμ λ©μΈ νμ΄μ§μΈ ``Dashboard`` νμ΄μ§μμλ runμ μμΌ°λ AutoML sessionλ€μ λͺ¨λ λ³Ό μ μμ΅λλ€. μΈμλ€μ μνλ₯Ό νμΈνκ³ , μ€μ λ€μ μ΄ν΄λ³Ό μ μμ΅λλ€. Dashboard Dashboardλ₯Ό μ¬μ©νκΈ° μν΄μ  μΈμμ μ νν ν, AutoMLVis λ²νΌμ ν΄λ¦­ν©λλ€. Dashboardμ λ³΄μ΄λ νμ΄λΈμ κ° μ΄μ λν΄ μμλ³΄κ² μ΅λλ€. How to go to Visual Analytics Multiple sessions Single session Table of contents Visualizationμ λ³Ό μ μλ νμ΄μ§λ ``Visual Analytics`` μλλ€. AutoML μΈμ μμλ NSML μΈμλ€μ΄ μ‘΄μ¬ν©λλ€. ``Visual Analytics`` νμ΄μ§μμλ μ΄ NSML μΈμλ€μ λν μ λ³΄λ€μ λ€μν κ΄μ μμ νμν  μ μμ΅λλ€. ``Dashboard`` μμ ``Visual Analytics`` λ‘ μ΄λνλ λ°©λ²μ μμλ³΄κ² μ΅λλ€. Web visualizationμ λ³΄κΈ° μν΄μ  https://automl.nsml.navercorp.com/λ‘ μ μνμλ©΄ λ©λλ€. μ¬λ¬ μΈμμ μ ννκ³ , μ€λ₯Έμͺ½ μλ¨ AutoMLVis λ²νΌμ λλ₯΄λ©΄ μ¬λ¬ μΈμμ νλ²μ νμΈν  μ μμ΅λλ€. μ΄ μ€ νλμ μΈμμ ν΄λ¦­νλ©΄ μμΈν AutoML session μ λ³΄λ₯Ό νμΈν  μ μμ΅λλ€. Project-Id-Version: NSML 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-02-01 07:44+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en_US
Language-Team: en_US <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :guilabel:`Creation time` : created time of AutoML model :guilabel:`Description` : Displays the description entered as :ref:`nsml automl memo<automl memo>` command. :guilabel:`Hypterparameter Configuration` : setup you wrote down on :ref:`Configuration file<configuration file>` is shown.  :guilabel:`Job Status` : You can check detailed information in :ref:`AutoML session and NSML session <automl and NSML session>` to look around status of sessions again.  :guilabel:`Job configuration` : setup you wrote down on :ref:`Configuration file<configuration file>` is shown.  :guilabel:`Name` : name of AutoML session.  :guilabel:`Running/Exited` : Shows the number of NSML sessions currently in progress and the number of NSML sessions terminated. :guilabel:`Status` : Status of the current AutoML session. There are three states: Running, Stopped, Exited. When all tasks of NSML session you are running are completed, the session is automatically exited. If you have directly stopped AutoML, it will be exited after the current NSML session.When you want to end all sessions immediately, use ``nsml automl stop -f`` command. :ref:`nsml automl stop<automl stop>` When you click :guilabel:`Stop tuning job` , running status is terminated. After running the current NSML session, then AutoML session is finished completely.  :ref:`Dashboard <Dashboard>` :ref:`How to go to Visual Analytics <how to go vis>` AutoML Web Dashboard AutoML supports web visualization so you can see the tuning process. This is a visualization-based analysis system that can easily analyze the results of hyperparameter tuning and fine-tuning. It consists of a ``Dashboard`` where you can view running sessions and a ``Visual Analytics`` where you can analyze them. On this page, we will explain the ``Dashboard`` and on the next page we will learn about the ``Visual Analytics`` .  On the main page of AutoML, ``Dashboard`` page, you can see all of AutoML sessions that were run. You can check the status of the sessions and look at the settings. Dashboard To use the Dashboard, select a session and click AutoMLVis button. Let's take a look at each column of the table shown in the Dashboard.  How to go to Visual Analytics Multiple sessions Single session Table of contents Visualization page is called ``Visual Analytics`` There are NSML sessions inside the AutoML session. ``Visual Analytics`` page provides a variety of views on the information about these NSML sessions. Let's learn how to move from ``Dashboard`` to ``Visual Analytics.`` To view Web visualization, go to https://automl.nsml.navercorp.com/ .  Select multiple sessions and click AutoMLVis button in the upper right corner to view multiple sessions at once. Click on one of these sessions to view detailed AutoML session information. 