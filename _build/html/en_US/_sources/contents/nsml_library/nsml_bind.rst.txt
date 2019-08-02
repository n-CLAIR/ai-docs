.. _nsml.bind():

nsml.bind
---------
.. py:function:: nsml.bind(save=None, load=None, **kwargs)

    NSML에서 사용할 save와 load, infer함수를 바인드해줍니다.

    :param fn save:
        모델을 저장하는 :ref:`save 함수<nsml.bind-save>` 입니다.

    :param fn load:
        저장된 모델을 불러오는 :ref:`load 함수<nsml.bind-load>` 입니다.

    Example ::

        def load(dir_name):
            torch.load(os.path.join(dir_name,'model.pth'))
            ...
        def save(dir_name, **kwargs):
            if kwargs['real']:
                torch.save(object,os.path.join(dir_name, 'model.pth'))
            ...
        # kwargs got a ‘real=True’.
        nsml.bind(save=save, load=load, real=True)

.. _nsml.bind-save:

nsml.bind-save
^^^^^^^^^^^^^^

    :ref:`nsml.bind()<nsml.bind()>` 에 넘겨지는 save 함수는 model, optimizer 등 python object를 저장하는 함수입니다.

    다음과 같이 첫번째 인자로 저장할 수 있는 경로를 받고, 유저는 입력받은 경로에 하나 이상의 파일을 저장합니다.

    이미 생성된 session을 재현하는 :ref:`nsml fork<nsml fork>` , :ref:`nsml submit<nsml submit>` 등의 명령어는 save 함수를 통해 저장된 파일을 load해서 사용합니다.

    :param str dir_path: 저장할 위치가 폴더 경로입니다.

    파일로 바로 저장하는 예제입니다.

        Example ::

            def nsml_save(dir_path):
                state = {
                'model': model.state_dict(),
                'optimizer': optimizer.state_dict()
                }
                filename = os.path.join(dir_path, 'model.pth')
            nsml.bind(save=nsml_save)

.. _nsml.bind-load:

nsml.bind-load
^^^^^^^^^^^^^^

    저장된 모델을 불러오는 load 함수를 binding 합니다.

    load 함수는 첫번째 인자로 반드시 폴더명을 변수로 받아야 합니다.

    :ref:`nsml fork<nsml fork>`, :ref:`nsml submit<nsml submit>` 등의 모델을 불러오는 명령어에서 load 함수를 호출합니다.

    :param str dir_path: 저장된 폴더의 경로입니다.

    :ref:`bind-save<nsml.bind-save>` 에서 1개의 파일만 저장했을 때 불러오는 예제입니다.

        Example ::

            def nsml_load(dir_path):
                checkpoint = torch.load(os.path.join(dir_path, 'model.pth'))
                ...

            nsml.bind(load=nsml_load)
