.. _nsml dataset board:

Show leaderboard of dataset
-----------------------------

    Usage:
        +-----------------------------------------------+
        | **nsml dataset board** *Options* DATASET_NAME |
        +-----------------------------------------------+

    Description:
        NSML에 올라간 데이터셋 기준으로 leaderboard를 보여줍니다.

    Example:
        .. code-block:: console
            :caption: Basic command

            nsml dataset board mnist

        .. code-block:: console

            nsml dataset board -j mnist

    Options:
        -j, --json-return

            json 형식으로 보여줍니다.
