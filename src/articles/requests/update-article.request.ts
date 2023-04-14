import { PartialType } from '@nestjs/swagger';
import { CreateArticleDto } from './create-article.request';

export class UpdateArticleDto extends PartialType(CreateArticleDto) {}
