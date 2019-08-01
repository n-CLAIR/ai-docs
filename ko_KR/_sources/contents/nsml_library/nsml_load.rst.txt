.. _nsml.load():

nsml.load
---------

.. py:function:: nsml.load(checkpoint, load_fn=None, session=None)

     저장된 모델을 불러옵니다. :ref:`nsml.bind()<nsml.bind()>` 함수에서는 load 함수를 정의만 합니다.

    :param str checkpoint: session 의 호출할 checkpoint을 정의합니다.

    :param fn load_fn: 모델을 load 하는 방법이 정의된 함수를 인수로 받습니다. load 함수가 호출되는 우선순위는

                            1. 이 함수로 전달된 load_fn
                            2. nsml.bind() 에 binding 된 load 함수
                            3. nsml 에서 정의한 default load 함수입니다.

    :param str session: 해당 session name 에서 저장된 model 을 불러옵니다.


    Example ::

            if __name__ == '__main__':
                ...
                if config.mode == 'train':
                    ...
                    # write down model number on checkpoint and session name that want to load.
                    nsml.load(checkpoint)='model number', session='session name')
