.. _tutorial_load_model:

Load a model in a session
--------------------------



    NSML 라이브러리를 사용하는 코드 내에서 다른 세션의 모델을 가져올 수 있습니다. :ref:`nsml.load<nsml.load()>` 로 다른 세션의 모델을 불러와서 :ref:`nsml.save<nsml.save()>` 로 저장 후, 종료하는 더미 세션을 생성하는 방식을 사용합니다.

    baseline의 예제로 그 방법을 알아보겠습니다.

    먼저 :ref:`nsml run<nsml run>` 명령어로 다음과 같이 실행합니다.

    .. code-block:: console

        $ ls
        README.md      data_loader.py main.py        setup.py

        $ nsml run -d mnist
        INFO[2019/07/19 15:06:04.170] .nsmlignore check - start
        INFO[2019/07/19 15:06:04.170] .nsmlignore check - done
        INFO[2019/07/19 15:06:04.235] file integrity check - start
        INFO[2019/07/19 15:06:04.237] file integrity check - done
        INFO[2019/07/19 15:06:04.238] .nsmlignore 16 B - start
        INFO[2019/07/19 15:06:04.238] .nsmlignore 16 B - done (1/5 20.00%) (16 B/18 KiB 0.09%)
        INFO[2019/07/19 15:06:04.238] README.md 9.1 KiB - start
        INFO[2019/07/19 15:06:04.239] README.md 9.1 KiB - done (2/5 40.00%) (9.2 KiB/18 KiB 50.32%)
        INFO[2019/07/19 15:06:04.239] data_loader.py 1.5 KiB - start
        INFO[2019/07/19 15:06:04.239] data_loader.py 1.5 KiB - done (3/5 60.00%) (11 KiB/18 KiB 58.57%)
        INFO[2019/07/19 15:06:04.239] main.py 7.3 KiB - start
        INFO[2019/07/19 15:06:04.239] main.py 7.3 KiB - done (4/5 80.00%) (18 KiB/18 KiB 98.81%)
        INFO[2019/07/19 15:06:04.239] setup.py 221 B - start
        INFO[2019/07/19 15:06:04.239] setup.py 221 B - done (5/5 100.00%) (18 KiB/18 KiB 100.00%)
        .....
        Building docker image. It might take for a while
        ......
        Session nsml_team/mnist/48 is started


    새롭게 만들어진 48번 세션을 :ref:`모델리스트<nsml model ls>` 를 확인해 보면 다음과 같이 생성된 모델 목록을 확인할 수 있습니다.

    .. code-block:: console

        $ nsml model ls nsml_team/mnist/48
        Checkpoint    Last Modified    Elapsed    Summary                                                                    Size
        ------------  ---------------  ---------  -------------------------------------------------------------------------  ---------
        0             36 minutes ago   3.397      epoch_total=5, loss=7.083731204539806, acc=0.0019707207207207205, epoch=0  366.74 MB
        1             36 minutes ago   24.667     epoch_total=5, loss=6.765417760556883, acc=0.00563063063063063, epoch=1    366.74 MB
        2             35 minutes ago   24.624     epoch_total=5, loss=6.254474949192357, acc=0.02294481981981982, epoch=2    366.74 MB
        3             35 minutes ago   24.751     epoch_total=5, loss=5.404983241278846, acc=0.08727477477477477, epoch=3    366.74 MB
        4             34 minutes ago   24.630     epoch_total=5, loss=4.27992379557979, acc=0.21494932432432431, epoch=4     366.74 MB


    baseline 코드에서 다음과 같은 :ref:`nsml.load<nsml.load()>` 함수를 호출하는 3줄의 소스코드를 삽입하면 다른 세션에서 학습한 모델을 불러올 수 있습니다. 48번 세션에 있는 4번 checkpoint 모델을 가져와서 새로운 세션을 만들어보겠습니다.

    baseline main.py에 다음 3줄의 코드를 추가합니다.

    .. code-block:: python

        nsml.load(checkpoint='4', session='nsml_team/mnist/48')
        nsml.save('saved')
        exit()

    체크포인트 번호, 모델을 가져올 세션 이름을 load() 함수에서 지정하고, save() 함수로 저장하는 방식입니다. 3줄의 소스코드를 추가할 가장 좋은 위치는 아래와 같이 ``Trainmode = True`` 코드 밑이며 ``""" Initiate RMSprop optimizer """`` 주석 위입니다.
    다른 위치에서 3줄의 소스코드를 사용하시려면 반드시 nsml.bind(), 즉 bind_model(model) 함수를 사용한 다음에 삽입해야 합니다.

    .. code-block:: python

            bind_model(model)

            if config.pause:
                nsml.paused(scope=locals())

            bTrainmode = False
            if config.mode == 'train':
                bTrainmode = True

                # the three lines of load/save source codes are positioned at below.
                nsml.load(checkpoint='4', session='nsml_team/mnist/48')
                nsml.save('saved')
                exit()
                # If you want to place it to the other line, you should put it below the bind_model() function,

                """ Initiate RMSprop optimizer """
                opt = keras.optimizers.rmsprop(lr=0.00045, decay=1e-6)
                model.compile(loss='categorical_crossentropy',
                              optimizer=opt,
                              metrics=['accuracy'])

    세션을 다시 한번 돌려보겠습니다. 49번 세션이 시작됩니다.

    .. code-block:: console

        $ nsml run -d mnist
        INFO[2019/07/19 15:10:10.803] .nsmlignore check - start
        INFO[2019/07/19 15:10:10.804] .nsmlignore check - done
        INFO[2019/07/19 15:10:10.942] file integrity check - start
        INFO[2019/07/19 15:10:10.944] file integrity check - done
        INFO[2019/07/19 15:10:10.946] .nsmlignore 16 B - start
        INFO[2019/07/19 15:10:10.946] .nsmlignore 16 B - done (1/5 20.00%) (16 B/18 KiB 0.09%)
        INFO[2019/07/19 15:10:10.946] README.md 9.1 KiB - start
        INFO[2019/07/19 15:10:10.946] README.md 9.1 KiB - done (2/5 40.00%) (9.2 KiB/18 KiB 50.02%)
        INFO[2019/07/19 15:10:10.946] data_loader.py 1.5 KiB - start
        INFO[2019/07/19 15:10:10.947] data_loader.py 1.5 KiB - done (3/5 60.00%) (11 KiB/18 KiB 58.23%)
        INFO[2019/07/19 15:10:10.947] main.py 7.4 KiB - start
        INFO[2019/07/19 15:10:10.947] main.py 7.4 KiB - done (4/5 80.00%) (18 KiB/18 KiB 98.82%)
        INFO[2019/07/19 15:10:10.947] setup.py 221 B - start
        INFO[2019/07/19 15:10:10.947] setup.py 221 B - done (5/5 100.00%) (18 KiB/18 KiB 100.00%)
        .....
        Building docker image. It might take for a while
        ......
        Session nsml_team/mnist/49 is started


    로그에서 다음 문구 2개를 발견하시면 모델이 정상적으로 load되었음을 확인할 수 있습니다.

    .. code-block:: console

        $ nsml logs nsml_team/mnist/49
        ...
        model loaded!
        model saved!
        ...

    saved라는 이름의 checkpoint가 생성됩니다. nsml.save() 함수에 'saved'라는 이름을 지정했기 때문입니다.

    .. code-block:: console
    
        $ nsml model ls nsml_team/mnist/49
        Checkpoint    Last Modified    Elapsed    Summary    Size
        ------------  ---------------  ---------  ---------  ---------
        saved         20 minutes ago   0.000                 366.74 MB


    다른 세션들과 같은 방법으로 nsml submit 명령어를 사용하여 모델을 리더보드에 제출할 수 있습니다.

    .. code-block:: console

        $ nsml submit nsml_team/mnist/49 saved
        ........
        Building docker image. It might take for a while
        .............
        Score: 0.012391527150908917
        Done
