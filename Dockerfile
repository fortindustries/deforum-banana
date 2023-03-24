FROM r8.im/deforum-art/deforum-stable-diffusion@sha256:652b0fed80b8c0845b20de06f877115f56b70b2136d02db95f163eff4b95e35d
RUN mkdir /adapter && cd /adapter && wget https://github.com/Hades32/banana-cog-adapter/releases/download/v0.0.7/cog-adapter && chmod +x cog-adapter
ENTRYPOINT ["/adapter/cog-adapter"]
CMD ["python","-m","cog.server.http"]