# Qwen3-8B on Runpod

[![Runpod](https://api.runpod.io/badge/kodxana/runpod-k1-qwen3-8b)](https://console.runpod.io/hub/listing/kodxana/runpod-k1-qwen3-8b)

Run your own AI chat API with Qwen3-8B. This starter kit supports chat, streaming and tool calling through an OpenAI-compatible API. Thinking mode is disabled by default.

You need a Runpod account with credit and a [Runpod API key](https://console.runpod.io/user/settings). The commands below use Bash and curl; on Windows, use Git Bash.

## 1. Set your credentials

Once Hub has created your endpoint, copy its ID. In your terminal, replace the placeholders with your API key and endpoint ID:

```bash
export RUNPOD_API_KEY="YOUR_RUNPOD_API_KEY"
export RUNPOD_ENDPOINT_ID="YOUR_ENDPOINT_ID"
```

Keep your API key private.

## 2. Send a message

```bash
curl --max-time 600 --silent --show-error \
  "https://api.runpod.ai/v2/$RUNPOD_ENDPOINT_ID/openai/v1/chat/completions" \
  -H "Authorization: Bearer $RUNPOD_API_KEY" \
  -H 'Content-Type: application/json' \
  -d '{"model":"qwen3-8b","messages":[{"role":"user","content":"Say hello in one sentence."}],"max_tokens":100}'
```

Your reply appears in the JSON response under `choices[0].message.content`.

The first request can take several minutes while a worker starts and downloads the model. Later requests are usually faster while the worker is running.

## Connect your app

To connect an OpenAI-compatible app, use:

- **Base URL:** `https://api.runpod.ai/v2/YOUR_ENDPOINT_ID/openai/v1`
- **API key:** your Runpod API key
- **Model:** `qwen3-8b`

