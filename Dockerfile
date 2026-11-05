# Reuse K1's tested worker image, including vLLM and its dependencies.
FROM runpod/worker-v1-vllm:v2.30.1@sha256:789e4aed317f62edf523ea4076b83762fada127cc41364bfe65daaa3a605a2b7

# Keep the inherited entrypoint: python3 /src/main.py starts vLLM and imports this handler.
# This is the unchanged handler from the matching upstream v2.30.1 release.
COPY handler.py /src/handler.py
COPY .runpod/LICENSE.worker-vllm /licenses/worker-vllm-MIT.txt
