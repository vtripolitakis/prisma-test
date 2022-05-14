import { Employee, PrismaClient } from '@prisma/client'
const prisma = new PrismaClient();

const fetchEmployees = async () => {
    const employees = prisma.employee.findMany();
    return employees;
}

fetchEmployees()
    .then((employees: Employee[]) => {
        console.log(`id\tfirst name\t\tlast name`)
        employees.forEach((employee: Employee) => {
            const { Id, FirstName, LastName } = employee;
            console.log(`${Id}\t${FirstName}\t\t${LastName}`)
        });
    }
    );