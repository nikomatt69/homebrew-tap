# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-20T15:35:55.646Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.92.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.92.0/nikcli-ai-darwin-x64.zip"
      sha256 "a940018d9ff5e3d56c39fef679507a35868bf45f5f73bb1429db41c44549e6ef"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.92.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0a605f307b96e42d509662352ab482abc409c7924407105f891ee9a344202496"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.92.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2c128a8a677aa8c0110834682520942471249ca3dbc3a752ad0470f9e240e9f7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.92.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "dcab3c6efc9be2eaa5374e3c900b93827f7b5a8c50dfbcc8ed2100d9b266165f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

