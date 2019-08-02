.. _model capacity:

Model Capacity Management
==========================

    NSML은 다른 해커톤 참여자들과 함께 사용하는 공간입니다. 모델 저장에 과도한 용량을 사용하면 다른 참여자에게 피해를 주는 상황을 초래할 수 있습니다.

    submit을 시도했거나 더 이상 필요하지 않은 모델은 계속 삭제하여 총 모델 용량을 관리해주시기 바랍니다. 모델 용량을 너무 크게 유지하실 경우, 사용 상의 불이익이 발생할 수 있음을 미리 알려드립니다. 정기 모니터링을 진행하여 정리를 권고할 예정입니다.


Step 1. 삭제할 모델 조회하기
-----------------------------------

    +---------------------------------+
    | **nsml model ls** SESSION_NAME  |
    +---------------------------------+

    각 모델의 사이즈는 맨 오른쪽 Size 열에서 확인하실 수 있습니다.

    .. code-block:: console

        $ nsml model ls nsmlteam/mnist/4
        Checkpoint    Last Modified    Elapsed    Summary                           Size
        ------------  ---------------  ---------  --------------------------------  ---------
        0             32 minutes ago   3.785      epoch=0, loss=7.015200052175436   366.74 MB
        1             31 minutes ago   25.032     epoch=1, loss=6.762363957929182   366.74 MB
        2             31 minutes ago   24.942     epoch=2, loss=6.377185855899845   366.74 MB
        3             30 minutes ago   25.053     epoch=3, loss=5.742813685992816   366.74 MB
        4             30 minutes ago   24.971     epoch=4, loss=4.847646936640009   366.74 MB
        11            29 minutes ago   25.032     epoch=1, loss=6.762363957929182   366.74 MB
        21            29 minutes ago   24.942     epoch=2, loss=6.377185855899845   366.74 MB
        31            28 minutes ago   25.053     epoch=3, loss=5.742813685992816   366.74 MB
        41            28 minutes ago   24.971     epoch=4, loss=4.847646936640009   366.74 MB


Step 2. 모델 삭제하기 & 확인하기
---------------------------------------------

    +-----------------------------------------------+
    | **nsml model rm** SESSION_NAME *CHECKPOINT*   |
    +-----------------------------------------------+

    모델을 삭제하고, 원하는 대로 삭제가 되었는지 확인하시기 바랍니다.

    웹페이지에서 오른쪽 상단의 본인의 프로필 사진 이미지를 클릭후에 Settings버튼을 누른후 Storage Management 구역에서 모델을 쉽게 확인하고 삭제할수도 있습니다.

    Example:

        .. code-block:: console
            :caption: 해당 세션에 있는 모델 모두 삭제하기

            $ nsml model rm nsmlteam/mnist/4 "*"
            $ nsml model ls nsmlteam/mnist/4
            Checkpoint    Last Modified    Elapsed    Summary                         Size
            ------------  ---------------  ---------  ------------------------------  ---------

        .. code-block:: console
            :caption: session에 있는 1번부터 35번 model을 전부 bash script로 삭제하기

            $ for i in `seq 1 35`; do nsml model rm nsmlteam/mnist/$i "*" ; done
            $ nsml model ls nsmlteam/mnist/35
            Checkpoint    Last Modified    Elapsed    Summary                         Size
            ------------  ---------------  ---------  ------------------------------  ---------

        .. code-block:: console
            :caption: 1개 삭제하기

            $ nsml model rm nsmlteam/mnist/4 0
            $ nsml model ls nsmlteam/mnist/4
            Checkpoint    Last Modified    Elapsed    Summary                         Size
            ------------  ---------------  ---------  -------------------------------  ---------
            1             31 minutes ago   25.032     epoch=1, loss=6.762363957929182  366.74 MB
            2             31 minutes ago   24.942     epoch=2, loss=6.377185855899845  366.74 MB
            3             30 minutes ago   25.053     epoch=3, loss=5.742813685992816  366.74 MB
            4             30 minutes ago   24.971     epoch=4, loss=4.847646936640009  366.74 MB
            11            29 minutes ago   25.032     epoch=1, loss=6.762363957929182  366.74 MB
            21            29 minutes ago   24.942     epoch=2, loss=6.377185855899845  366.74 MB
            31            28 minutes ago   25.053     epoch=3, loss=5.742813685992816  366.74 MB
            41            28 minutes ago   24.971     epoch=4, loss=4.847646936640009  366.74 MB
