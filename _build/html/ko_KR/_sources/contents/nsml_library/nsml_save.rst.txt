.. _nsml.save():

nsml.save
---------
.. py:function:: nsml.save(checkpoint=None, save_fn=None)

    모델을 저장합니다. :ref:`nsml.bind()<nsml.bind()>` 함수에서는 save 함수를 정의만 합니다.

    :param str: 매 checkpoint 마다 저장될 모델의 구분을 위해 값을 받습니다.

                            checkpoint 값으로 내부적으로 모델을 구분합니다.
                            checkpoint 이 None 일때는 현재 시각의 이름으로 모델이 저장됩니다.
                            똑같은 checkpoint 을 두번 저장하면 overwrite 됩니다.

    :param fn save_fn: 모델을 저장하는 방법이 정의된 함수를 인수로 받습니다. save 함수가 호출되는 우선순위는

                            1. 이 함수로 전달된 save_fn
                            2. nsml.bind() 에 binding 된 save 함수
                            3. NSML 에서 정의된 default save 함수입니다.

    Example ::

            def save(dir_path, **kwargs):
                torch.save(object, os.path.join(dir_path,'model.pth'))
                print('saved!')
            nsml.save(checkpoint=checkpoint, save_fn=save)
