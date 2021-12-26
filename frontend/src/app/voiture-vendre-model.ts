export interface voiture_vendre {
    id: string;
    title: string;
    description: string;
    image: string;
    last_update: string;
    instructor: string;
    language: string;
    price: number;
    goals: string[];
    requirements: string[];

    doors: number;
    seats: number;
    transmission: string;
    age: number;
  }