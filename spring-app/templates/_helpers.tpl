{{/* This is a comment - Generate basic labels */}}
{{- define "spring-music.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "spring.labels" }}
generator: helm-byme
date: {{ now | htmlDate }}
app-name: {{ .Chart.Name}}
version:  {{ .Chart.Version }}
{{- end }}



