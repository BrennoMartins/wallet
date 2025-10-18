src/
└── real_estate_fund_app/
├── core/                            # Domínio puro
├── application/
│   ├── use_case/
│   │   ├── create_fund.clj
│   │   ├── get_wallet.clj
│   │   └── rebalance_wallet.clj
│   └── port/
│       ├── inbound/                 # Interfaces que descrevem entrada
│       │   └── api_port.clj
│       └── outbound/                # Interfaces que descrevem saída (DB, APIs externas)
│           └── repository_port.clj
├── adapter/
│   ├── inbound/
│   │   └── http/
│   │       ├── routes.clj           <-- Aqui ficam os endpoints
│   │       └── controller.clj       <-- Controller que chama os casos de uso
│   └── outbound/
│       └── database/
│           └── fund_repository.clj
├── config/
│   └── system.clj                   <-- Monta dependências (injeta use cases)
└── main.clj                         <-- Inicializa o servidor
