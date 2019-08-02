Appendix
=========

.. toctree::
    :maxdepth: 1
    :glob:

    appendix/*


Notification
------------

    session의 상태 변화를 email을 통해 알람을 받을 수 있습니다.

    https://airush.nsml.navercorp.com/settings/profile

    .. note:: **session의 상태가 zombie가 되는 조건**

        GPU를 할당받고 실행 중이지만 1시간 동안 사용량이 0 인 경우 상태가 zombie로 표시됩니다. (여러 대의 GPU를 할당 받고 하나의 GPU라도 사용량이 0일 때도 zombie가 됩니다. )

Dataset Policy
----------------

    해커톤에서 사용하는 데이터셋은 지적재산권으로 보호되는 저작물입니다. 기간 동안 참가자들에게만 사용이 허용됩니다. 해커톤 이외의 용도(개인적 용도/상업적 용도 등)으로 저장하여 수집하려는 시도를 했을 경우 법적 조치가 취해질 수 있습니다.


.. _GPU policy:

GPU credit rule
------------------

    한 유저가 동시에 실행 가능한 GPU MAX 개수는 2개로 정해져있고, 이는 리소스 상황에 따라 계속 변경됩니다.

    GPU MAX값이 줄어도 이미 시작된 session에는 영향을 주지 않습니다.
