import { Client, PrismaClient, Review, Product } from '@prisma/client'
const prisma = new PrismaClient();

type ClientWithReviewWithProduct = (Client & {
    Review: (Review & {
        product: Product;
    })[];
});

const fetchClients = async () => {
    const clients = await prisma.client.findMany({
        include: {
            Review: {
                include: {
                    product: true
                }
            }
        }
    });
    return clients;
}

fetchClients()
    .then((clients: ClientWithReviewWithProduct[]) => {
        clients.forEach((client: ClientWithReviewWithProduct) => {
            const { Id, ClientName, ClientSurname, Review } = client;
            console.log(`USER ${Id}`);
            console.log(`Name: ${ClientName}\t SURNAME: ${ClientSurname}`)
            console.log('REVIEWS');
            Review.forEach((review) => {
                console.log(`== PRODUCT: ${review.product.ProductName}\t GRADE: ${review.grade}`)
            })
        });
    }
    );