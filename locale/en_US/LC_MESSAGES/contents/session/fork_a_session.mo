ή          |               ά   A   έ   s     e     O   ω  H   I  B     *   Υ  4      4   5  9   j  /   €  |  Τ  4   Q  ]     _   δ  @   D  H        Ξ  &   ν  *     *   ?  *   j  ,      :ref:`nsml.paused <nsml.paused()>` κ° νΈμΆλμ΄μΌ ν©λλ€. :ref:`nsml.save <nsml.bind-save>` μ :ref:`nsml.load <nsml.bind-load>` κ° μ μμ μΌλ‘ λμν΄μΌ ν©λλ€. entry νμΌμμ :ref:`reserved arguments <reserved arguments>` λ₯Ό λ°μ μ μμ΄μΌ ν©λλ€. fork κ° μ λλ‘ λμνλ €λ©΄, λ€μμ μ‘°κ±΄μ λ§μ‘±ν΄μΌ ν©λλ€. forkν μΈμμμ λΆλ¬μ¬ λͺ¨λΈμ checkpoint λ₯Ό μ§μ ν©λλ€. session μ fork ν΄μ μλ‘μ΄ μΈμμΌλ‘ μ¬μμ±ν©λλ€. μ¬μ©ν  cpu κ°―μμλλ€. (default 2) μλ‘μ΄ session μ μ λ¬ν  arguments μλλ€. νμν memory μ¬μ΄μ¦μλλ€. (default '24G') νμν share memory μ¬μ΄μ¦μλλ€. (default '1G') ν λΉλ°μ gpu μ κ°―μλ₯Ό μλ ₯ν©λλ€. Project-Id-Version: NSML 
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
 :ref:`nsml.paused <nsml.paused()>` should be called. :ref:`nsml.save <nsml.bind-save>` and :ref:`nsml.load <nsml.bind-load>` should work properly. You must be able to receive :ref:`reserved arguments <reserved arguments>` from the entry file. For fork to work properly, The following conditions must be met: Specifies the checkpoint of the model to fetch from the forked session.  Regenerate session by forking. The number of cpu to use. (default 2)  The arguments to pass to the new session.  Required share memory size. (default '1G') Required share memory size. (default '1G') Enter the number of gpu you want to assign.  