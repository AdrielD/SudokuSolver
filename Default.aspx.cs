using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SudokuSolver_v3._2
{
    public partial class Default : System.Web.UI.Page
    {

    #region Variaveis

        string[,] cel = new string[10, 10];
        string[,] auxcel = new string[10, 10];
        TextBox[,] celbx = new TextBox[10, 10];
        bool isChanged = false;
        bool isSolved = false;

    #endregion

    #region Inicializacao

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }

            iniciaCelulas();
            iniciaGrade();
        }

        protected void iniciaCelulas()
        {
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                    cel[x, y] = "123456789";
        }

        protected void iniciaGrade()
        {
            celbx[1, 1] = TextBox11; celbx[1, 4] = TextBox14; celbx[1, 7] = TextBox17;
            celbx[1, 2] = TextBox12; celbx[1, 5] = TextBox15; celbx[1, 8] = TextBox18;
            celbx[1, 3] = TextBox13; celbx[1, 6] = TextBox16; celbx[1, 9] = TextBox19;
            celbx[2, 1] = TextBox21; celbx[2, 4] = TextBox24; celbx[2, 7] = TextBox27;
            celbx[2, 2] = TextBox22; celbx[2, 5] = TextBox25; celbx[2, 8] = TextBox28;
            celbx[2, 3] = TextBox23; celbx[2, 6] = TextBox26; celbx[2, 9] = TextBox29;
            celbx[3, 1] = TextBox31; celbx[3, 4] = TextBox34; celbx[3, 7] = TextBox37;
            celbx[3, 2] = TextBox32; celbx[3, 5] = TextBox35; celbx[3, 8] = TextBox38;
            celbx[3, 3] = TextBox33; celbx[3, 6] = TextBox36; celbx[3, 9] = TextBox39;

            celbx[4, 1] = TextBox41; celbx[4, 4] = TextBox44; celbx[4, 7] = TextBox47;
            celbx[4, 2] = TextBox42; celbx[4, 5] = TextBox45; celbx[4, 8] = TextBox48;
            celbx[4, 3] = TextBox43; celbx[4, 6] = TextBox46; celbx[4, 9] = TextBox49;
            celbx[5, 1] = TextBox51; celbx[5, 4] = TextBox54; celbx[5, 7] = TextBox57;
            celbx[5, 2] = TextBox52; celbx[5, 5] = TextBox55; celbx[5, 8] = TextBox58;
            celbx[5, 3] = TextBox53; celbx[5, 6] = TextBox56; celbx[5, 9] = TextBox59;
            celbx[6, 1] = TextBox61; celbx[6, 4] = TextBox64; celbx[6, 7] = TextBox67;
            celbx[6, 2] = TextBox62; celbx[6, 5] = TextBox65; celbx[6, 8] = TextBox68;
            celbx[6, 3] = TextBox63; celbx[6, 6] = TextBox66; celbx[6, 9] = TextBox69;

            celbx[7, 1] = TextBox71; celbx[7, 4] = TextBox74; celbx[7, 7] = TextBox77;
            celbx[7, 2] = TextBox72; celbx[7, 5] = TextBox75; celbx[7, 8] = TextBox78;
            celbx[7, 3] = TextBox73; celbx[7, 6] = TextBox76; celbx[7, 9] = TextBox79;
            celbx[8, 1] = TextBox81; celbx[8, 4] = TextBox84; celbx[8, 7] = TextBox87;
            celbx[8, 2] = TextBox82; celbx[8, 5] = TextBox85; celbx[8, 8] = TextBox88;
            celbx[8, 3] = TextBox83; celbx[8, 6] = TextBox86; celbx[8, 9] = TextBox89;
            celbx[9, 1] = TextBox91; celbx[9, 4] = TextBox94; celbx[9, 7] = TextBox97;
            celbx[9, 2] = TextBox92; celbx[9, 5] = TextBox95; celbx[9, 8] = TextBox98;
            celbx[9, 3] = TextBox93; celbx[9, 6] = TextBox96; celbx[9, 9] = TextBox99;
        }
        
    #endregion

    #region Controle I/O

        protected void recebeInput()
        {
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                    if (celbx[x, y].Text.Length == 1) cel[x, y] = celbx[x, y].Text;
        }

        protected void geraOutput()
        {
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                    celbx[x, y].Text = cel[x, y];
        }

    #endregion

    #region Resolucao

        protected void analiseLogica()
        {
            isChanged = false;

            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                {
                    if (cel[x, y].Length == 1)
                    {
                        resolveLinha(x, cel[x, y]);
                        resolveColuna(y, cel[x, y]);
                        resolveQuadro(x, y, cel[x, y]);
                    }

                    if (cel[x, y].Length > 1) unicoDaLinha(x, y);
                    if (cel[x, y].Length > 1) unicoDaColuna(x, y);
                    if (cel[x, y].Length > 1) unicoDoQuadro(x, y);
                }

            if (isChanged) analiseLogica();
        }

        protected void resolveLinha(int linha, string numero)
        {
            for (int i = 1; i <= 9; i++)
            {
                int pos = cel[linha, i].IndexOf(numero);
                if (pos > -1 && cel[linha, i].Length > 1)
                {
                    cel[linha, i] = cel[linha, i].Replace(numero, "");
                    isChanged = true;
                }
            }
        }

        protected void resolveColuna(int coluna, string numero)
        {
            for (int i = 1; i <= 9; i++)
            {
                int pos = cel[i, coluna].IndexOf(numero);
                if (pos > -1 && cel[i, coluna].Length > 1)
                {
                    cel[i, coluna] = cel[i, coluna].Replace(numero, "");
                    isChanged = true;
                }
            }
        }

        protected void resolveQuadro(int linha, int coluna, string numero)
        {
            int m = 0; int n = 0;

            if(linha >= 1 && linha <= 3) m = 0;
            if(linha >= 4 && linha <= 6) m = 3;
            if(linha >= 7 && linha <= 9) m = 6;

            if (coluna >= 1 && coluna <= 3) n = 0;
            if (coluna >= 4 && coluna <= 6) n = 3;
            if (coluna >= 7 && coluna <= 9) n = 6;

            for (int i = 1; i <= 3; i++)
                for (int j = 1; j <= 3; j++)
                {
                        int pos = cel[i + m, j + n].IndexOf(numero);
                        if (pos > -1 && cel[i + m, j + n].Length > 1)
                        {
                            cel[i + m, j + n] = cel[i + m, j + n].Replace(numero, "");
                            isChanged = true;
                        }
                }
        }

        protected void unicoDaLinha(int linha, int coluna)
        {
            char[] candidate = cel[linha, coluna].ToCharArray();
            for (int x = 0; x < candidate.Length; x++)
            {
                bool isUnique = true;
                for(int count = 1; count <= 9; count++)
                    if (count != coluna)
                    {
                        int pos = cel[linha, count].IndexOf(candidate[x]);
                        if (pos > -1)
                        {
                            isUnique = false;
                            count = 10;
                        }
                    }

                if (isUnique)
                {
                    cel[linha, coluna] = Convert.ToString(candidate[x]);
                    isChanged = true;
                    break;
                }
            }
        }

        protected void unicoDaColuna(int linha, int coluna)
        {
            char[] candidate = cel[linha, coluna].ToCharArray();
            for (int x = 0; x < candidate.Length; x++)
            {
                bool isUnique = true;
                for(int count = 1; count <= 9; count++)
                    if (count != linha)
                    {
                        int pos = cel[count, coluna].IndexOf(candidate[x]);
                        if (pos > -1)
                        {
                            isUnique = false;
                            count = 10;
                        }
                    }

                if (isUnique)
                {
                    cel[linha, coluna] = Convert.ToString(candidate[x]);
                    isChanged = true;
                    break;
                }
            }
        }

        protected void unicoDoQuadro(int linha, int coluna)
        {
            int m = 0; int n = 0;

            if (linha >= 1 && linha <= 3) m = 0;
            if (linha >= 4 && linha <= 6) m = 3;
            if (linha >= 7 && linha <= 9) m = 6;

            if (coluna >= 1 && coluna <= 3) n = 0;
            if (coluna >= 4 && coluna <= 6) n = 3;
            if (coluna >= 7 && coluna <= 9) n = 6;

            char[] candidate = cel[linha, coluna].ToCharArray();
            for (int x = 0; x < candidate.Length; x++)
            {
                bool isUnique = true;
                for(int countx = 1; countx <= 3; countx++)
                    for (int county = 1; county <= 3; county++)
                        if (countx == linha && county == coluna)
                        {
                            //nada;
                        }
                        else
                        {
                            int pos = cel[countx + m, county + n].IndexOf(candidate[x]);
                            if (pos > -1)
                            {
                                isUnique = false;
                                countx = 4; county = 4;
                            }
                        }

                if (isUnique)
                {
                    cel[linha, coluna] = Convert.ToString(candidate[x]);
                    isChanged = true;
                    break;
                }
            }
        }

        protected void forcaBruta()
        {
            isChanged = false;
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                    if (cel[x, y].Length > 1)
                    {
                        isChanged = true;
                        char[] candidate = cel[x, y].ToCharArray();
                        for (int c = 0; c < candidate.Length; c++)
                        {
                            cel[x, y] = Convert.ToString(candidate[c]);
                            analiseLogica();
                            if (!verificaValores()) reverteGrade();
                            else return;
                        }
                    }
        }

        protected bool verificaValores()
        {
            for (int x = 1; x <= 9; x++)
            {
                int soma = 0; int mult = 1;
                for (int y = 1; y <= 9; y++)
                {
                    soma += Convert.ToInt32(cel[x, y]);
                    mult *= Convert.ToInt32(cel[x, y]);
                }

                if (soma != 45 || mult != 362880) return false;
            }

            for (int y = 1; y <= 9; y++)
            {
                int soma = 0; int mult = 1;
                for (int x = 1; x <= 9; x++)
                {
                    soma += Convert.ToInt32(cel[x, y]);
                    mult *= Convert.ToInt32(cel[x, y]);
                }

                if (soma != 45 || mult != 362880) return false;
            }

            return true;
        }

        protected bool verificaGrade()
        {
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                    if (cel[x, y].Length != 1) return false;
            
            return true;
        }

        protected void backupGrade()
        {
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                    auxcel[x, y] = cel[x, y];
        }

        protected void reverteGrade()
        {
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                    cel[x, y] = auxcel[x, y];
        }

    #endregion

    #region Interface

        protected void btnResolve_Click(object sender, EventArgs e)
        {
            recebeInput();
            analiseLogica();

            if (!verificaGrade())
            {
                backupGrade();
                do
                {
                    forcaBruta();
                }
                while (!verificaGrade() && isChanged);
            }

            geraOutput();

            if (verificaValores()) Label1.Text = "OK!";
            else Label1.Text = "No solution...";
        }

        protected void btnLimpa_Click(object sender, EventArgs e)
        {
            for (int x = 1; x <= 9; x++)
                for (int y = 1; y <= 9; y++)
                {
                    celbx[x, y].Text = "";
                    iniciaCelulas();
                }

            iniciaCelulas();
            Label1.Text = ". . .";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            celbx[1, 1].Text = "5"; celbx[1, 4].Text = "1"; celbx[1, 6].Text = "9"; celbx[1, 9].Text = "6";
            celbx[2, 1].Text = "1"; celbx[2, 3].Text = "9"; celbx[2, 7].Text = "4"; celbx[3, 1].Text = "3";
            celbx[3, 2].Text = "6"; celbx[3, 5].Text = "8"; celbx[3, 6].Text = "5"; celbx[3, 7].Text = "2";
            celbx[3, 8].Text = "9"; celbx[3, 9].Text = "1"; celbx[4, 1].Text = "4"; celbx[4, 2].Text = "1";
            celbx[4, 3].Text = "8"; celbx[4, 8].Text = "6"; celbx[5, 1].Text = "7"; celbx[5, 2].Text = "3";
            celbx[5, 3].Text = "5"; celbx[5, 4].Text = "6"; celbx[5, 9].Text = "9"; celbx[6, 2].Text = "2";
            celbx[6, 4].Text = "3"; celbx[6, 5].Text = "7"; celbx[6, 6].Text = "1"; celbx[6, 8].Text = "8";
            celbx[6, 9].Text = "4"; celbx[7, 1].Text = "8"; celbx[7, 5].Text = "1"; celbx[7, 6].Text = "6";
            celbx[7, 7].Text = "9"; celbx[8, 3].Text = "1"; celbx[8, 5].Text = "2"; celbx[8, 7].Text = "3";
            celbx[9, 1].Text = "2"; celbx[9, 3].Text = "4"; celbx[9, 4].Text = "9"; celbx[9, 6].Text = "3";
            celbx[9, 7].Text = "6"; celbx[9, 9].Text = "8";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            celbx[1, 3].Text = "1"; celbx[5, 6].Text = "3";
            celbx[1, 6].Text = "6"; celbx[5, 8].Text = "7";
            celbx[1, 8].Text = "9"; celbx[6, 4].Text = "2";
            celbx[2, 1].Text = "5"; celbx[6, 7].Text = "9";
            celbx[2, 7].Text = "1"; celbx[7, 1].Text = "4";
            celbx[3, 4].Text = "3"; celbx[7, 3].Text = "6";
            celbx[3, 7].Text = "4"; celbx[7, 6].Text = "9";
            celbx[3, 9].Text = "6"; celbx[8, 3].Text = "8";
            celbx[4, 3].Text = "9"; celbx[8, 9].Text = "5";
            celbx[4, 6].Text = "7"; celbx[9, 2].Text = "3";
            celbx[5, 2].Text = "4"; celbx[9, 4].Text = "4";
            celbx[5, 4].Text = "6"; celbx[9, 7].Text = "8"; 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            celbx[1, 2].Text = "5"; celbx[4, 3].Text = "5"; celbx[8, 2].Text = "9";
            celbx[1, 3].Text = "2"; celbx[4, 5].Text = "1"; celbx[8, 3].Text = "6";
            celbx[1, 6].Text = "1"; celbx[5, 2].Text = "8"; celbx[8, 6].Text = "7";
            celbx[2, 1].Text = "7"; celbx[5, 6].Text = "9"; celbx[8, 9].Text = "4";
            celbx[2, 4].Text = "5"; celbx[5, 8].Text = "4"; celbx[9, 4].Text = "4";
            celbx[2, 7].Text = "4"; celbx[6, 5].Text = "3"; celbx[9, 7].Text = "9";
            celbx[2, 8].Text = "3"; celbx[6, 7].Text = "1"; celbx[9, 8].Text = "7";
            celbx[3, 1].Text = "6"; celbx[6, 9].Text = "8";
            celbx[3, 7].Text = "2"; celbx[7, 1].Text = "8";
            celbx[3, 9].Text = "1"; celbx[7, 3].Text = "7";
            celbx[4, 1].Text = "3"; celbx[7, 9].Text = "2";
        }

    #endregion

    }
}
