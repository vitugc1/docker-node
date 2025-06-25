# Etapa base com cache compartilhado
FROM node:lts-alpine AS base
WORKDIR /usr/app
RUN corepack enable pnpm

# Etapa apenas de dependências
FROM base AS deps
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile --prod

# Etapa de build (usa dependências completas para build)
FROM base AS builder
COPY --from=deps /usr/app/node_modules ./node_modules
COPY . .
RUN pnpm install --frozen-lockfile
RUN pnpm run build

# Etapa de desenvolvimento
FROM base AS dev
COPY --from=deps /usr/app/node_modules ./node_modules
COPY . .
CMD ["pnpm", "start:dev"]

# Etapa de produção
FROM base AS prod
COPY --from=builder /usr/app/dist ./dist
COPY --from=builder /usr/app/package.json ./
COPY --from=deps /usr/app/node_modules ./node_modules

EXPOSE 3000
CMD ["pnpm", "start"]


