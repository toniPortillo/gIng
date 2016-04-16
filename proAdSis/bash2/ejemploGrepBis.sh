#!/bin/bash

#ls pasa toda la lista del contenido del directorio actual por tuberia a grep y este
#cogerá de la lista aquello que cumpla el patrón en este caso lo que termine por s.sh
ls * | grep s\.sh$
echo -e "\n"

#ls pasa toda la lista del contenido del directorio actual por tuberia a grep y este
#cogerá de la lista aquello que cumpla el patrón en este caso lo que empiece por ejemplo(letraquesea)or
ls * | grep ^ejemplo.or
