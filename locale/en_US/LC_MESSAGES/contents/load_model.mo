ή          |               ά   *  έ   =     0  F  :   w     ²     3  y   ·  O   1  ©     O   +  ά  {  |  X    Υ	  D   Χ
       /   Ί  i   κ  p   T  j   Ε  P   0       6     F  >   NSML λΌμ΄λΈλ¬λ¦¬λ₯Ό μ¬μ©νλ μ½λ λ΄μμ λ€λ₯Έ μΈμμ λͺ¨λΈμ κ°μ Έμ¬ μ μμ΅λλ€. :ref:`nsml.load<nsml.load()>` λ‘ λ€λ₯Έ μΈμμ λͺ¨λΈμ λΆλ¬μμ :ref:`nsml.save<nsml.save()>` λ‘ μ μ₯ ν, μ’λ£νλ λλ―Έ μΈμμ μμ±νλ λ°©μμ μ¬μ©ν©λλ€. baseline main.pyμ λ€μ 3μ€μ μ½λλ₯Ό μΆκ°ν©λλ€. baseline μ½λμμ λ€μκ³Ό κ°μ :ref:`nsml.load<nsml.load()>` ν¨μλ₯Ό νΈμΆνλ 3μ€μ μμ€μ½λλ₯Ό μ½μνλ©΄ λ€λ₯Έ μΈμμμ νμ΅ν λͺ¨λΈμ λΆλ¬μ¬ μ μμ΅λλ€. 48λ² μΈμμ μλ 4λ² checkpoint λͺ¨λΈμ κ°μ Έμμ μλ‘μ΄ μΈμμ λ§λ€μ΄λ³΄κ² μ΅λλ€. baselineμ μμ λ‘ κ·Έ λ°©λ²μ μμλ³΄κ² μ΅λλ€. savedλΌλ μ΄λ¦μ checkpointκ° μμ±λ©λλ€. nsml.save() ν¨μμ 'saved'λΌλ μ΄λ¦μ μ§μ νκΈ° λλ¬Έμλλ€. λ€λ₯Έ μΈμλ€κ³Ό κ°μ λ°©λ²μΌλ‘ nsml submit λͺλ Ήμ΄λ₯Ό μ¬μ©νμ¬ λͺ¨λΈμ λ¦¬λλ³΄λμ μ μΆν  μ μμ΅λλ€. λ‘κ·Έμμ λ€μ λ¬Έκ΅¬ 2κ°λ₯Ό λ°κ²¬νμλ©΄ λͺ¨λΈμ΄ μ μμ μΌλ‘ loadλμμμ νμΈν  μ μμ΅λλ€. λ¨Όμ  :ref:`nsml run<nsml run>` λͺλ Ήμ΄λ‘ λ€μκ³Ό κ°μ΄ μ€νν©λλ€. μλ‘­κ² λ§λ€μ΄μ§ 48λ² μΈμμ :ref:`λͺ¨λΈλ¦¬μ€νΈ<nsml model ls>` λ₯Ό νμΈν΄ λ³΄λ©΄ λ€μκ³Ό κ°μ΄ μμ±λ λͺ¨λΈ λͺ©λ‘μ νμΈν  μ μμ΅λλ€. μΈμμ λ€μ νλ² λλ €λ³΄κ² μ΅λλ€. 49λ² μΈμμ΄ μμλ©λλ€. μ²΄ν¬ν¬μΈνΈ λ²νΈ, λͺ¨λΈμ κ°μ Έμ¬ μΈμ μ΄λ¦μ load() ν¨μμμ μ§μ νκ³ , save() ν¨μλ‘ μ μ₯νλ λ°©μμλλ€. 3μ€μ μμ€μ½λλ₯Ό μΆκ°ν  κ°μ₯ μ’μ μμΉλ μλμ κ°μ΄ ``Trainmode = True`` μ½λ λ°μ΄λ©° ``""" Initiate RMSprop optimizer """`` μ£Όμ μμλλ€. λ€λ₯Έ μμΉμμ 3μ€μ μμ€μ½λλ₯Ό μ¬μ©νμλ €λ©΄ λ°λμ nsml.bind(), μ¦ bind_model(model) ν¨μλ₯Ό μ¬μ©ν λ€μμ μ½μν΄μΌ ν©λλ€. Project-Id-Version: NSML 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-08-01 09:39+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en_US
Language-Team: en_US <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 You can import models from other sessions within your code using the NSML library.It works by loading another session's model with :ref:`nsml.load<nsml.load()>` and storing it with :ref:`nsml.save<nsml.save()>`, and then create a dummy session to terminate. Add the following three lines of code to the main.py of the baseline Let's create a new session by loading the 4th checkpoint model in the 48th session using :ref:`nsml.load<nsml.load()>` function with the three lines of code. Let's take a look at it with baseline examples. A checkpoint named 'saved' is created. This is because we named it when calling the nsml.save() function. You can submit your model to the leaderboard using the nsml submit command in the same way as any other session. If you find the following two statements in the log, you can see that the model has been loaded correctly. First, execute the following command with the :ref:`nsml run<nsml run>` command. If you check the newly created 48th session using :ref:`model list<nsml model ls>`, you can see the list of models created as follows Let's try to run the session again. Session 49 begins. Specify the index of checkpoint and session name to load in load() function, and save with save() function. The best position of writing the code is below of ``Trainmode = True`` as shown in the below example. If you use the code at the other positions, you should insert the code after calling the bind_model(model) function. 