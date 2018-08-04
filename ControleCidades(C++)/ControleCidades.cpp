#include <iostream>
#include <string.h>
#include <locale.h>
#include <stdlib.h>

using namespace std;

struct no{
string info;
string NomeCidade;	
int NumHab;
string NomePref;
string Partido;
struct no *prox;	

};
typedef struct no *noPtr;

noPtr inicio = NULL;
int menu();
void InserirCidade ();
void ExcluirCidade ();
void Consultar ();
void MudarPrefeito();
void Listar();
void ListarCidadePref ();
void ListarCidadePopulosa ();
void VerMenu();
void ListarPrefPartidHab();
bool listaVazia();
main()
{
setlocale(LC_ALL, "Portuguese");	
cout << "------------------------- CONTROLE DE CIDADES ----------------------------";
cout <<	"\n MENU:";
cout <<	"\n 1 - Incluir cidade no programa de controle."; //funciona
cout << "\n 2 - Excluir cidade do programa de controle."; //funciona
cout << "\n 3 - Consultar uma cidade. "; //funciona
cout << "\n 4 - Mudar Prefeito. "; //funciona
cout << "\n 5 - Listar todas as cidades"; //funciona
cout << "\n 6 - Listar todas as cidades e prefeitos de um partido político"; //funciona
cout << "\n 7 - Listar todas as cidades com mais de 200.000 habitantes."; //funciona
cout << "\n 8 - Exibir Menu"; //funciona
cout << "\n 9 - Listar Prefeito, Partido e Número de Habitantes de uma cidade."; //funciona
cout <<	"\n 0 - Sair";
int op;
do{
	op = menu();
	switch(op)
{s
case 1: InserirCidade (); break;
case 2: ExcluirCidade (); break;
case 3: Consultar (); break;
case 4: MudarPrefeito(); break;
case 5: Listar(); break;
case 6: ListarCidadePref (); break;
case 7: ListarCidadePopulosa (); break; 
case 8: VerMenu(); break;
case 9: ListarPrefPartidHab();	break;
}
}while (op != 0 );
}

int menu()
{
int opc;
cout << "\n\n Digite a opção desejada (Digite 8 para ver o Menu): ";
	cin >> opc;
return opc;
}

bool listaVazia(){
	if (inicio)
	return false;
	else
	return true;
}


void InserirCidade(){
noPtr p = new no;
noPtr aux;
noPtr ant;
fflush(stdin);
	cout << "\n Digite o nome da Cidade: ";
	getline (cin,p->NomeCidade);
fflush(stdin);
	cout << "\n Digite o nome do Prefeito: ";
	getline (cin,p->NomePref);
fflush(stdin);
	cout << "\n Digite o nome do Partido: ";
	getline (cin, p->Partido);

	cout << "\n Digite o número de habitantes: ";
	cin >> p->NumHab;

if (listaVazia())
	{
	p->prox = NULL;
	inicio = p;
	} else {
aux = inicio;
while (aux != NULL && p->NomeCidade > aux->NomeCidade){	  
ant = aux;
aux = aux->prox;
}
if (aux == inicio){
	p->prox = aux;
	inicio = p;
} else {
		if (aux == NULL)
		{
		p->prox = NULL;
		ant->prox = p;
		} else {
			p->prox = aux;
			ant->prox = p;
			}	
		}
	}
}

void ExcluirCidade() {
string Nome;
noPtr ant = inicio, p = inicio;
bool achei = false;
if (!listaVazia())
{
	fflush(stdin);
	cout << "\n Digite a cidade que você quer excluir: ";
	getline (cin,Nome);
	while (p!=NULL && achei == false) {
		if (p->NomeCidade == Nome){
			achei = true;
		}
		else
		{
			ant = p;
			p=p->prox;
		}
	}
	if (!achei)
	{
		cout << "\n Cidade não encontrada";
	}
	if (achei)
		if (ant == inicio)
		{
			inicio = inicio->prox;
			cout << "\n A cidade " << Nome << " foi excluída!\n";
		}  
		else
		{
			ant->prox = p -> prox;
			delete(p);
			cout << "\n A cidade " << Nome << " foi excluída!\n";
		}
	
}else 
cout << "\n Lista Vazia!" << endl;	
}


void Consultar(){
noPtr p = inicio;
string Nome;
bool achei = false;
if (!listaVazia())
{
fflush(stdin);
cout << "\n Insira a cidade que você quer encontrar: ";
getline (cin,Nome);
while (p!= NULL && achei == false) {
if (p->NomeCidade == Nome){
	achei = true;
	cout << "\n Cidade Encontrada!!!  " << p->NomeCidade << " possui endereço: " << p;
}
	p = p->prox;
}
if (!achei)
cout << "\n Cidade não encontrada";
} else
cout << "\n Lista Vazia!" << endl;	
}


void Listar(){
noPtr p=inicio;
if (!listaVazia())
{	
cout << "\n As cidades cadastradas:" << endl;
	while (p != NULL)
	{
	cout << "\n " << p->NomeCidade << ": "; 
	cout << "\n Nome do prefeito: " << p->NomePref;
	cout << "\n Nome do partido: " << p->Partido;
	cout << "\n Número de Habitantes: " << p->NumHab << "\n";	
	p=p->prox;
	}
}else cout << "\nLista Vazia!" << endl;
}


void ListarCidadePopulosa (){
if (!listaVazia())
{
noPtr p=inicio;
while(p != NULL){
	if(p->NumHab > 200000)
		cout << "\n " << p->NomeCidade << " possui " << p->NumHab << " habitantes.";
p = p -> prox;
}
}else cout << "\n Lista Vazia!" << endl;
}


void VerMenu()
{
cout <<	"\n MENU:";
cout <<	"\n 1 - Incluir cidade no programa de controle.";
cout << "\n 2 - Excluir cidade do programa de controle.";
cout << "\n 3 - Consultar uma cidade. ";
cout << "\n 4 - Mudar Prefeito. ";
cout << "\n 5 - Listar todas as cidades em ordem alfabética.";
cout << "\n 6 - Listar todas as cidades e prefeitos de um partido político";
cout << "\n 7 - Listar todas as cidades com mais de 200.000 habitantes.";
cout <<	"\n 0 - Sair";	
}


void ListarPrefPartidHab()
{
noPtr p = inicio;
string Nome;
bool achei = false;
if (!listaVazia())
{
fflush(stdin);
cout << "\n Insira a cidade que você quer encontrar: ";
getline (cin,Nome);
while (p!=NULL && achei == false) {
if (p->NomeCidade == Nome){
	achei = true;
	cout << "\n " << p->NomeCidade << " possui os seguintes dados: "; 
	cout << "\n Nome do prefeito: " << p->NomePref;
	cout << "\n Nome do partido: " << p->Partido;
	cout << "\n Número de Habitantes: " << p->NumHab;
}
	p = p->prox;
}
if (!achei)
cout << "\n Cidade não encontrada";
} else
cout << "\n Lista Vazia!" << endl;	
}


void MudarPrefeito()
{
string Nome;
noPtr p=inicio;
bool achei = false;
fflush(stdin);
cout << "\n Digite a cidade que você quer alterar o prefeito: ";
getline (cin,Nome);
while (p!=NULL && achei == false) {
if (p->NomeCidade == Nome){
	achei = true;
cout << "\n O atual prefeito de " << p->NomeCidade << " é o(a): " << p->NomePref;
fflush(stdin);
cout << "\n\n Digite o nome do novo prefeito: ";
getline (cin,p->NomePref);
fflush(stdin);
cout << "\n Digite o partido do novo prefeito: ";
getline (cin,p->Partido);
cout << "\n Agora o prefeito de " << p->NomeCidade << " é o(a): " << p->NomePref;
}
p=p->prox;
}
if (!achei)
cout << "\n Cidade não encontrada";
}


void ListarCidadePref (){
noPtr p = inicio;
string part;
bool achei = false;
if (!listaVazia())
{
fflush(stdin);
cout << "\n Insira o partido: ";
getline (cin,part);
while (p!=NULL) {
if (p->Partido == part){
	achei = true;
	cout << "\n O partido " << p->Partido << " governa em " << p->NomeCidade << " com o(a) prefeito(a) " << p->NomePref; 
}
p = p->prox;
}
if (!achei)
cout << "\n Partido nao governa nenhuma cidade ou nao existe.";
} else
cout << "\n Lista Vazia!" << endl;	
}


