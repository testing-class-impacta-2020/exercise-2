package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definition.CrudProcessos;
import org.junit.Assert;
import support.RESTSupport;

public class CrudProcessosSteps {
    @Dado("^que o usuário está na página de processos$")
    public void queOUsuarioEstaNaPaginaDeProcessos() {
        CrudProcessos.clearFields();

    }

    @E("^o usuário digita no campo \"([^\"]*)\" o valor \"([^\"]*)\"$")
    public void oUsuarioDigitaNoCampoOValor(String campo, String conteudo) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        CrudProcessos.addFields(campo,conteudo);
    }

    @Quando("^o usuário clicar em salvar$")
    public void oUsuarioClicarEmSalvar() {
        RESTSupport.executePost(CrudProcessos.getEndPoint(), CrudProcessos.getFields());
    }


    @E("^o usuário gostaria de visualizar o processo com id (\\d+)$")
    public void oUsuarioGostariaDeVisualizarOProcessoComId(String id) {
        CrudProcessos.setLastID(id);
    }

    @Quando("^o usuário clicar em visualizar$")
    public void oUsuarioClicarEmVisualizar() {
        RESTSupport.executeGet(CrudProcessos.getEndPoint() + CrudProcessos.getLastID() + ".json");
    }

    @E("^O usuário deve visualizar o campo \"([^\"]*)\" com valor \"([^\"]*)\"$")
    public void oUsuárioDeveVisualizarOCampoComValor(String campo, String valor) throws Throwable {
        Assert.assertEquals(valor, RESTSupport.key(campo));

    }

}
