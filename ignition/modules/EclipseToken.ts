import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("EclipseTokenModule", (m) => {
  const fornecimentoInicial = m.getParameter("fornecimentoInicial", 100_000_000n);
  const eclipseToken = m.contract("EclipseToken", [fornecimentoInicial]);
  return { eclipseToken };
});