import { Client, Review, PrismaClient } from '@prisma/client'
const prisma = new PrismaClient();

const fetchClients = async () => {
    const clients = prisma.review.findMany();
    return clients;
}

// fetchClients()
//     .then((clients: Client[]) => {
//         console.log(`id\tfirst name\t\tlast name`)
//         clients.forEach((client: Client) => {
//             const { Id, ClientName, ClientSurname } = client;
//             console.log(`${Id}\t${ClientName}\t\t${ClientSurname}`)
//         });
//     }
//     );
    
fetchClients()
    .then((reviews: Review[]) => {
        console.log(reviews);
        console.log(reviews[0].client, reviews[0].product)
        //console.log(`id\tfirst name\t\tlast name`)
        // clients.forEach((client: Client) => {
        //     console.log(client);
        //     const { Id, ClientName, ClientSurname } = client;
        //     console.log(`${Id}\t${ClientName}\t\t${ClientSurname}`)
        // });
    }
    );