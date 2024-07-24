{{- define "env.template" }}
- name: {{ .env }}
  valueFrom:
    secretKeyRef:
      name: conv-secrets
      key: {{ .env }}
{{- end }}