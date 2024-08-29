<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Filament\Resources\UserResource\RelationManagers;
use App\Models\Company;
use App\Models\Role;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Auth;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';

    public static function form(Form $form): Form
    {
        $schema = [
            Forms\Components\TextInput::make('name'),
            Forms\Components\TextInput::make('email'),
            Forms\Components\TextInput::make('password')
                ->password()
                ->required(fn($context) => $context === 'create')
                ->minLength(8) // Optional: Set minimum length
                ->maxLength(30),
            Forms\Components\Select::make('roles')
                ->label('Roles')
                ->multiple()
                ->options(Role::all()->pluck('name', 'id')->toArray())
                ->searchable()
                ->required()
                ->relationship('roles', 'name'),

        ];


        if (Auth::user()->company_id == null) {
            $schema[] = Forms\Components\Select::make('company')
                ->label('Company')
                ->options(Company::all()->pluck('name', 'id')->toArray())
                ->searchable()
                ->relationship('company', 'name');
        }

        $schema[] =
            Forms\Components\Select::make('status')
            ->options([
                STATUS_ACTIVE => 'Active',
                STATUS_INACTIVE => 'Inactive'
            ])
            ->default((string)STATUS_ACTIVE)
            ->required();

        return $form->schema($schema);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('email')
                    ->searchable()
                    ->sortable(),

                Tables\Columns\TextColumn::make('status')
                    ->searchable()
                    ->sortable()
                    ->formatStateUsing(function ($state) {
                        return match ($state) {
                            (string)STATUS_ACTIVE => 'Active',
                            (string)STATUS_INACTIVE => 'Inactive'
                        };
                    }),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }
}
