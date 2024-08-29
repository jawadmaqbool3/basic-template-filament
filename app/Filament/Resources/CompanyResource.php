<?php

namespace App\Filament\Resources;

use App\Filament\Resources\CompanyResource\Pages;
use App\Filament\Resources\CompanyResource\RelationManagers;
use App\Models\Company;
use App\Models\Permission;
use App\Models\Role;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class CompanyResource extends Resource
{
    protected static ?string $model = Company::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-office-2';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name'),
                Forms\Components\Textarea::make('description'),
                Forms\Components\Select::make('status')
                    ->options([
                        STATUS_ACTIVE => 'Active',
                        STATUS_INACTIVE => 'Inactive',
                        STATUS_PAYMENT_PENDING => 'Payment Pending',
                    ])
                    ->default((string)STATUS_ACTIVE)
                    ->required(),
                Forms\Components\Select::make('permissions')
                    ->label('Permissions')
                    ->multiple()
                    ->options(Permission::all()->pluck('name', 'id')->toArray())
                    ->searchable()
                    ->preload(10)
                    ->relationship('permissions', 'name'),
                Forms\Components\Select::make('roles')
                    ->label('Roles')
                    ->multiple()
                    ->options(Role::all()->pluck('name', 'id')->toArray())
                    ->searchable()
                    ->preload(10)
                    ->relationship('roles', 'name')

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('description'),
                Tables\Columns\TextColumn::make('status')
                    ->searchable()
                    ->sortable()
                    ->formatStateUsing(function ($state) {
                        return match ($state) {
                            (string)STATUS_ACTIVE => 'Active',
                            (string)STATUS_INACTIVE => 'Inactive',
                            (string)STATUS_PAYMENT_PENDING => 'Payment Pending',
                        };
                    })
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
            'index' => Pages\ListCompanies::route('/'),
            'create' => Pages\CreateCompany::route('/create'),
            'edit' => Pages\EditCompany::route('/{record}/edit'),
        ];
    }
}
