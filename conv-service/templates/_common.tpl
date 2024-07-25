{{- define "env.template" }}
- name: {{ .env }}
  valueFrom:
    secretKeyRef:
      name: "{{ .name }}-secrets"
      key: {{ .env }}
{{- end }}