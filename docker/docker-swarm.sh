# node


# How to list docker swarm nodes with labels
# https://stackoverflow.com/questions/42414703/how-to-list-docker-swarm-nodes-with-labels

docker node ls -q | xargs docker node inspect \
  -f '{{ .ID }} [{{ .Description.Hostname }}]: {{ .Spec.Labels }}'

# the formatted oen
docker node ls -q | xargs docker node inspect \
  -f '{{ .ID }} [{{ .Description.Hostname }}]: {{ range $k, $v := .Spec.Labels }}{{ $k }}={{ $v }} {{end}}'