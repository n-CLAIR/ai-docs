ή                           h        v       H     X   Ξ     '     ΐ  D   Ν  ΐ     N   Σ  B   "  $   e  +     .   Ά  |  ε  \   b     Ώ  }   ]  4   Ϋ  D   	  3   U	  
   	  7   	  ³   Μ	  9   
  1   Ί
     μ
  (   
  (   3   :ref:`bind-save<nsml.bind-save>` μμ 1κ°μ νμΌλ§ μ μ₯νμ λ λΆλ¬μ€λ μμ μλλ€. :ref:`nsml fork<nsml fork>`, :ref:`nsml submit<nsml submit>` λ±μ λͺ¨λΈμ λΆλ¬μ€λ λͺλ Ήμ΄μμ load ν¨μλ₯Ό νΈμΆν©λλ€. :ref:`nsml.bind()<nsml.bind()>` μ λκ²¨μ§λ save ν¨μλ model, optimizer λ± python objectλ₯Ό μ μ₯νλ ν¨μμλλ€. NSMLμμ μ¬μ©ν  saveμ load, inferν¨μλ₯Ό λ°μΈλν΄μ€λλ€. load ν¨μλ μ²«λ²μ§Έ μΈμλ‘ λ°λμ ν΄λλͺμ λ³μλ‘ λ°μμΌ ν©λλ€. λ€μκ³Ό κ°μ΄ μ²«λ²μ§Έ μΈμλ‘ μ μ₯ν  μ μλ κ²½λ‘λ₯Ό λ°κ³ , μ μ λ μλ ₯λ°μ κ²½λ‘μ νλ μ΄μμ νμΌμ μ μ₯ν©λλ€. λ§€κ°λ³μ λͺ¨λΈμ μ μ₯νλ :ref:`save ν¨μ<nsml.bind-save>` μλλ€. μ΄λ―Έ μμ±λ sessionμ μ¬ννλ :ref:`nsml fork<nsml fork>` , :ref:`nsml submit<nsml submit>` λ±μ λͺλ Ήμ΄λ save ν¨μλ₯Ό ν΅ν΄ μ μ₯λ νμΌμ loadν΄μ μ¬μ©ν©λλ€. μ μ₯λ λͺ¨λΈμ λΆλ¬μ€λ :ref:`load ν¨μ<nsml.bind-load>` μλλ€. μ μ₯λ λͺ¨λΈμ λΆλ¬μ€λ load ν¨μλ₯Ό binding ν©λλ€. μ μ₯λ ν΄λμ κ²½λ‘μλλ€. μ μ₯ν  μμΉκ° ν΄λ κ²½λ‘μλλ€. νμΌλ‘ λ°λ‘ μ μ₯νλ μμ μλλ€. Project-Id-Version: NSML 
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
 This is an example to load when only one file is saved in :ref:`bind-save<nsml.bind-save>` . It calls load function on a command that loads a model such as :ref:`nsml fork<nsml fork>` , :ref:`nsml infer<nsml infer>` , :ref:`nsml submit<nsml submit>`. :ref:`nsml.bind()<nsml.bind()>` passed to nsml.bind() is a function that stores python objects such as models and optimizers. It binds functions that are used internally in NSML. load function should receive first argument as saved directory path. User saves one or more files in the input dir_path. Parameters :ref:`save function<nsml.bind-save>` to save the model. :ref:`nsml fork<nsml fork>` , :ref:`nsml infer<nsml infer>` , :ref:`nsml submit<nsml submit>` commands that use an already created session use objects saved through save function. :ref:`load function<nsml.bind-load>` loads a saved model. Bind the load function that load the saved model. The path to the saved folder. The folder path to the location to save. An example of saving directly to a file. 