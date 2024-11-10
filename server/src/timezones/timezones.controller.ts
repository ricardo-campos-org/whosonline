import { Controller, Get } from '@nestjs/common';

@Controller('timezones')
export class TimezonesController {
  @Get()
  findAll() {}
}
