# kubectl

```sh
#Wath status pods
kubectl get pods -w 
#Create deployment with image
kubectl create deployment $NAME --image $IMAGE

#rolling upgrate
kubectl set image deploy $DEPLOYMENT $POD=$IMAGE

#rollback rolling
kubectl rollout undo deploy $DEPLOYMENT
```
