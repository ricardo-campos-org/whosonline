import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Timezone {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 50, name: 'display_name', nullable: false })
  displayName: string;

  @Column({ length: 30, nullable: false })
  name: string;

  @Column({ length: 6, nullable: false })
  code: string;

  @Column({ length: 3, nullable: false })
  acronym: string;
}

// keep going from here: https://docs.nestjs.com/recipes/sql-typeorm
