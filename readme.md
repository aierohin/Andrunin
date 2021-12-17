# Infrastructure As Code

> Для начала работы установите следующие env переменные, получить их можно при установке yandex cloud cli

- export TF_VAR_yc_token= - тот же токен что при установке cli
- export TF_VAR_yc_cloud_id= взять из ГУИ облака

### Для деплоя в облако:

```shell
make all
```

### Для удаления из облака:

```shell
make destroy && makr clean
```