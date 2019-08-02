.. _bind_model():

bind_model
----------
.. py:function:: bind_model()

    bind_model은 NSML의 함수는 아니지만 :ref:`nsml.bind<nsml.bind()>` 를 쉽게 사용하기 위한 wrapper 함수입니다.

    .. code-block:: python

        def bind_model(model, class_to_save, optimizer=None):
            def load(dir_path, **kwargs):
                state = torch.load(os.path.join(filename, 'model.pt'))
                model.load_state_dict(state['model'])
                if 'optimizer' in state and optimizer:
                    optimizer.load_state_dict(state['optimizer'])
                print('Model loaded')

            def save(dir_path, **kwargs):
                state = {
                    'model': model.state_dict(),
                    'optimizer': optimizer.state_dict()
                }
                torch.save(state, os.path.join(dir_path, 'model.pt'))

            def infer(input, top_k=100):
                # load data into torch tensor
                model.eval()
                # from list to tensor
                image = torch.stack(preprocess(None, input))
                image = Variable(image.cuda())
                _, clean_state, _, _ = model(image, None)
                _, all_cls = clean_state.size()
                prediction = F.softmax(clean_state).topk(min(top_k, all_cls))
                # output format
                # [[(prob, key), (prob, key)... ], ...]
                return list(zip(list(prediction[0].data.cpu().squeeze().tolist()),
                                list(prediction[1].data.cpu().squeeze().tolist())))

            nsml.bind(save=save, load=load, infer=infer) # 'nsml.bind' function must be called at the end.
