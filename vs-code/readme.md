# VS code snipeds
```javascript
{
	// models
	"model":{
		"prefix": "model",
		"body": [
			"from django.db import models",
			"class ${1:Model}:",
			"\t${2:attribute}"
		]
	},
	"model char Field":{
		"prefix": "mcharfield",
		"body": [
			"${1} = models.CharField(",    
			"\t\thelp_text=\"${2:this is property}\",",
			"\t\tmax_length=${3:20},$4",
			")"
		]
	},
	"model int Field":{
		"prefix": "mintfield",
		"body": [
			"${1} = models.IntegerField(",
			"\t\thelp_text=\"${2:this is property}\",",
			"\t\t${3},$4",
			")"
		]
	},
	"model positive int Field":{
		"prefix": "mpintfield",
		"body": [
			"${1} = models.IntegerField(",
			"\t\thelp_text=\"${2:this is property}\",",
			"\t\t${3},$4",
			")"
		]
	},
	"model ForeignKey Field":{
		"prefix": "mforeignkeyfield",
		"body": [
			"${1} = models.ForeignKey(",
			"\t\thelp_text=\"${2:this is property}\",",
			"\t\tto=\"${3}\",$4",
			")"
		]
	},
	"model file Field":{
		"prefix": "mfilefield",
		"body": [
			"${1} = models.FileField(",
			"\t\thelp_text=\"${2:this is property}\",",
			"\t\tnull=${3:True},",
			"\t\tblank=${4:True},$5",
			")"
		]
	},
	//serializers
	"serializer":{
		"prefix": "serializer",
		"body": [
			"#django",
			"from django.conf import settings",
			"#rest framework",
			"from rest_framework import serializers",
			"#models",
			"from ${2:app}.models import ${3:model}",
			"\nclass $1Serializer(serializers.Serializer):",
			"\t${4:charfield} = serializers.CharField(\n\t\tmax_length=${5:100},\n\t\trequired=True\n\t)",
			"\t${6:integerfield} = serializers.IntegerField(required=True)",
		]
	},
	"model serializer":{
		"prefix": "Modelserializer",
		"body": [
			"#django",
			"from django.conf import settings",
			"#rest framework",
			"from rest_framework import serializers",
			"#models",
			"from ${2:app}.models import ${3:model}",
			"\nclass $1Serializer(serializers.ModelSerializer):",
			"\tclass Meta:",
			"\t\tmodel = $3",
			"\t\tfields = '__all__'",
			"\t\t#write_only_fields  = ['',]",
			"\t\t#read_only_fields= ['']",
		]
	},
	//viewset
	"model viewset":{
		"prefix": "modelviewset",
		"body": [
			"#django",
			"from django.conf import settings",
			"#rest framework",
			"from rest_framework import viewsets,mixins",
			"#permissions",
			"from rest_framework.permissions import IsAuthenticated, AllowAny",
			"#from ${2:app}.permissions import $3",
			"#serializer",
			"from ${2:app}.serializers import $4",
			"#models",
			"from ${2:app}.models import ${5:model}",
			"\nclass $1ViewSet(",
			"\n\ttmixins.CreateModelMixin,",
			"\n\tmixins.RetrieveModelMixin,",
			"\n\tmixins.UpdateModelMixin,",
			"\n\tmixins.DestroyModelMixin,",
			"\n\tmixins.ListModelMixin,",
			"\n\tviewsets.GenericViewSet",
			"\n):",
			"\tqueryset = $5.objects.filter()",
			"\tserializer_class = $4",
			"\tlookup_field = '${6:pk}'",
			"\t#permission_classes =[IsAuthenticated, AllowAny,$3]"
		]
	},
	//urlpatterns
	"urlpatterns":{
		"prefix": "url_patterns",
		"body": [
			"#rest framework",
			"from rest_framework.routers import DefaultRouter",
			"from django.urls import path, include",
			"#views",
			"from ${1:app}.views import ${2:file_base}",
			"router =  DefaultRouter()",
			"router.register('${4:path}',$2.${3:modelviewset})",
			"urlpatterns = [",
			"\tpath('', include(router.urls)),",
			"]",
		]
	},
	//clasic
	"class":{
		"prefix": "class",
		"body": [
			"class ${1:Class}(${2:Interface}):",
			"\tdef __init__(self):",
			"\t\tpass",
			"\t$3",
		]
	},
	"def":{
		"prefix": "def",
		"body": [
			"def ${1:method}(${2:self},*args,**kwargs):",
			"\t${3:pass}",
		]
	},
	"try":{
		"prefix": "try",
		"body": [
			"try:",
			"\t$1",
			"except Exception as ex:",
			"\tprint(ex)",
			"\t$2",
		]
	},
}
```
