import { Client, PrismaClient } from '@prisma/client'
const prisma = new PrismaClient();

const fetchClients = async () => {
    const clients = prisma.client.findMany();
    return clients;
}

fetchClients()
    .then((clients: Client[]) => {
        console.log(`id\tfirst name\t\tlast name`)
        clients.forEach((client: Client) => {
            const { Id, ClientName, ClientSurname } = client;
            console.log(`${Id}\t${ClientName}\t\t${ClientSurname}`)
        });
    }
    );