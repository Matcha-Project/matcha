import "reflect-metadata";
import { DataSource } from "typeorm";

export const AppDataSource = new DataSource({
    type: "postgres",
    host: "matcha_db",
    port: 5432,
    username: 'postgres',
    password: '1234',
    database: 'matcha_db',
    synchronize: true,
    logging: false,
    entities: ["src/entities/**/*.ts"],
    migrations: [],
    subscribers: [],
});